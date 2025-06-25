import 'package:flutter/material.dart';
import 'package:reviewer_mobile/theme/app_colors.dart';
import 'package:routefly/routefly.dart';

import '../../core/config_state.dart';
// Importe BuiltList se você for incluir imagens no ReviewRequestDTO
// import 'package:built_collection/built_collection.dart';
// import 'package:reviewerapi/src/model/image_dto.dart'; // Se ReviewRequestDTO precisar de ImageDTO


class EditReviewPage extends StatefulWidget {
  const EditReviewPage({Key? key}) : super(key: key);

  @override
  State<EditReviewPage> createState() => _EditReviewPageState();
}

class _EditReviewPageState extends State<EditReviewPage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _reviewController;
  // int _stars = 0; // Se você não for usar, pode manter comentado ou remover
  int? _reviewId;
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
    _reviewController = TextEditingController(); // Inicializa aqui, o texto será setado em didChangeDependencies
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Obtém os argumentos apenas uma vez ou quando a rota muda.
    // Evita recriar o TextEditingController em cada rebuild.
    if (_reviewController.text.isEmpty && ModalRoute.of(context)?.settings.arguments != null) {
      final args =
      ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
      _reviewController.text = args['initialReview'] ?? '';
      // _stars = args['initialStars'] ?? 0; // Se não usa, pode remover
      _reviewId = args['reviewId'];
    }
  }

  @override
  void dispose() {
    _reviewController.dispose();
    super.dispose();
  }

  Future<void> _submitEdit() async {
    if (_formKey.currentState!.validate()) {
      if (_reviewId == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Erro: ID do review não encontrado.')),
        );
        return;
      }
      if (_isLoading) return;

      setState(() {
        _isLoading = true;
      });

      try {
        final String title = 'Review Atualizada'; // Título obrigatório para o DTO
        final String content = _reviewController.text;

        await _reviewService.updateReview(_reviewId!, title, content);

        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Review atualizada com sucesso!'),
              backgroundColor: Colors.green,
            ),
          );
          Navigator.pop(context, true); // Retorna true para indicar sucesso na edição
        }
      } catch (e) {
        print('Erro ao atualizar review: $e');
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text(
          'Editar Review',
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
                  labelText: 'Edite sua review',
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
                (value == null || value.isEmpty)
                    ? 'Campo obrigatório'
                    : null,
              ),
              const SizedBox(height: 24),
              // Adicione a seção de notas/estrelas aqui se seu ReviewRequestDTO tiver esse campo.
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
                  onPressed: _isLoading ? null : _submitEdit,
                  child: _isLoading
                      ? const CircularProgressIndicator(color: Colors.white)
                      : const Text('Salvar Alterações'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
