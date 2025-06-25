import 'package:flutter/material.dart';
import 'package:reviewer_mobile/theme/app_colors.dart';

import '../../api/app_api.dart';
import '../../core/config_state.dart';
import '../../core/services/review_service.dart';

class CreateReviewPage extends StatefulWidget {
  const CreateReviewPage({super.key});

  @override
  State<CreateReviewPage> createState() => _CreateReviewPageState();
}

class _CreateReviewPageState extends State<CreateReviewPage> {
  final _formKey = GlobalKey<FormState>();
  final _reviewController = TextEditingController();
  // int _stars = 0; // Se você não for usar, pode manter comentado ou remover
  late final ReviewService _reviewService;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    // Inicialização do ReviewService.
    // É crucial que AppApi e ConfigState sejam singletons na sua aplicação real.
    // Para este exemplo, estamos criando instâncias temporárias.
    final _tempAppApi = AppApi(config: ConfigState()); // Idealmente use DI
    _reviewService = ReviewService(_tempAppApi);
  }

  Future<void> _submitReview() async {
    if (_formKey.currentState!.validate()) {
      if (_isLoading) return;

      setState(() {
        _isLoading = true;
      });

      try {
        final String title = 'Nova Review';
        final String content = _reviewController.text;

        await _reviewService.createReview(title, content);

        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Review criada com sucesso!'),
              backgroundColor: Colors.green,
            ),
          );
          Navigator.pop(context, true);
        }
      } catch (e) {
        print('Erro ao criar review: $e');
        if (mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(e.toString())));
        }
      } finally {
        if (mounted) {
          setState(() {
            _isLoading = false;
          });
        }
      }
    }
  }

  @override
  void dispose() {
    _reviewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text(
          'Criar Review',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
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
                decoration: InputDecoration(
                  labelText: 'Escreva sua review',
                  labelStyle: TextStyle(color: AppColors.mediumText),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.mediumText),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.highlight),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: AppColors.border),
                  ),
                ),
                style: const TextStyle(color: AppColors.darkText, fontSize: 18),
                validator:
                    (value) =>
                value == null || value.isEmpty
                    ? 'Campo obrigatório'
                    : null,
              ),
              const SizedBox(height: 24),
              // Adicione a seção de notas/estrelas aqui se seu ReviewRequestDTO tiver esse campo.
              // Exemplo (se 'rating' for um campo em ReviewRequestDTO):
              // const Text(
              //   'Nota:',
              //   style: TextStyle(color: AppColors.darkText, fontSize: 16),
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: List.generate(5, (index) {
              //     return IconButton(
              //       onPressed: () {
              //         setState(() {
              //           _stars = index + 1;
              //         });
              //       },
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
                  onPressed: _isLoading ? null : _submitReview,
                  child: _isLoading
                      ? const CircularProgressIndicator(color: Colors.white)
                      : const Text('Publicar', style: TextStyle(fontSize: 18)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
