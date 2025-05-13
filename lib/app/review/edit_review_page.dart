import 'package:flutter/material.dart';
import 'package:reviewer_mobile/services/review_service.dart';
import 'package:reviewer_mobile/theme/app_colors.dart';
import 'package:routefly/routefly.dart';

class EditReviewPage extends StatefulWidget {
  const EditReviewPage({Key? key}) : super(key: key);

  @override
  State<EditReviewPage> createState() => _EditReviewPageState();
}

class _EditReviewPageState extends State<EditReviewPage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _reviewController;
  int _stars = 0;
  int? _reviewId;
  final ReviewService _reviewService = ReviewService();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>? ??
        {};
    _reviewController = TextEditingController(
      text: args['initialReview'] ?? '',
    );
    _stars = args['initialStars'] ?? 0;
    _reviewId = args['reviewId'];
  }

  Future<void> _submitEdit() async {
    if (_formKey.currentState!.validate()) {
      if (_reviewId == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Erro: ID do review não encontrado.')),
        );
        return;
      }

      try {
        final reviewData = {
          'title': 'Review Atualizada',
          'content': _reviewController.text,
        };

        await _reviewService.updateReviewAsJson(_reviewId!, reviewData);

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Review atualizada com sucesso!')),
        );

        // Retorna um valor indicando que a review foi editada
        Navigator.pop(context, true);
      } catch (e) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Erro ao atualizar review: $e')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.mediumText,
        title: const Text(
          'Editar Review',
          style: TextStyle(color: AppColors.darkText),
        ),
        iconTheme: const IconThemeData(color: AppColors.darkText),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _reviewController,
                decoration: const InputDecoration(
                  labelText: 'Edite sua review',
                  labelStyle: TextStyle(color: AppColors.mediumText),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.mediumText),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.mediumText),
                  ),
                ),
                style: const TextStyle(color: AppColors.darkText),
                validator:
                    (value) =>
                        (value == null || value.isEmpty)
                            ? 'Campo obrigatório'
                            : null,
              ),
              const SizedBox(height: 24),
              // const Text(
              //   'Nota:',
              //   style: TextStyle(color: AppColors.darkText, fontSize: 16),
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: List.generate(5, (index) {
              //     return IconButton(
              //       onPressed: () => setState(() => _stars = index + 1),
              //       icon: Icon(
              //         index < _stars ? Icons.star : Icons.star_border,
              //         color: AppColors.stars,
              //         size: 32,
              //       ),
              //     );
              //   }),
              // ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.highlight,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: _submitEdit,
                  child: const Text('Salvar Alterações'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
