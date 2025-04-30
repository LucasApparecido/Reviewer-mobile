import 'package:flutter/material.dart';
import 'package:reviewer_mobile/theme/app_colors.dart'; // Importando as cores
import 'package:routefly/routefly.dart';

class CreateReviewPage extends StatefulWidget {
  const CreateReviewPage({super.key});

  @override
  State<CreateReviewPage> createState() => _CreateReviewPageState();
}

class _CreateReviewPageState extends State<CreateReviewPage> {
  final _formKey = GlobalKey<FormState>();
  final _reviewController = TextEditingController();
  int _stars = 0;

  void _submitReview() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Review criada com sucesso!')),
      );
      Routefly.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.mediumText,
        title: const Text(
          'Criar Review',
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
                  labelText: 'Escreva sua review',
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
                        value == null || value.isEmpty
                            ? 'Campo obrigatório'
                            : null,
              ),
              const SizedBox(height: 24),
              const Text(
                'Nota:',
                style: TextStyle(color: AppColors.darkText, fontSize: 16),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return IconButton(
                    onPressed: () {
                      setState(() {
                        _stars = index + 1;
                      });
                    },
                    icon: Icon(
                      index < _stars ? Icons.star : Icons.star_border,
                      color: AppColors.stars,
                      size: 32,
                    ),
                  );
                }),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.highlight,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: _submitReview,
                  child: const Text('Publicar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
