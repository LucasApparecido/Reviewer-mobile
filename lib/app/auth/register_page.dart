import 'package:flutter/material.dart';
import 'package:reviewer_mobile/shared/widgets/custom_bottom_app_bar.dart';
import 'package:reviewer_mobile/theme/app_colors.dart';
// Importa o Dio diretamente
import 'package:dio/dio.dart';

// IMPORTS DO BACKEND GERADO
// Você está usando 'package:reviewerapi/reviewerapi.dart', o que é bom
// porque ele re-exporta tudo.
import 'package:reviewerapi/reviewerapi.dart'; // Contém RegistrationControllerApi e UserRegisterRequestDTO
// Certifique-se de que este import funciona e que 'reviewerapi.dart'
// está na raiz da pasta gerada (ex: lib/src/generated/reviewerapi.dart)

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  // Instância do Dio com a base URL.
  // Usamos 10.0.2.2 para emuladores Android para acessar o localhost do seu PC.
  // Se estiver testando em um simulador iOS ou diretamente no desktop, use 'http://localhost:8080/api/v1'.
  final Dio _dio = Dio(BaseOptions(baseUrl: 'http://10.0.2.2:8080/api/v1'));

  // A instância da API de registro será inicializada no initState
  late final RegistrationControllerApi _registrationApi;

  @override
  void initState() {
    super.initState();
    // Inicializa a API de registro passando o Dio e a instância global de serializers.
    // 'serializers' é gerado pelo openapi-generator e deve estar acessível via 'reviewerapi.dart'.
    _registrationApi = RegistrationControllerApi(_dio, serializers);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _loginController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _registerUser() async {
    if (_formKey.currentState!.validate()) {
      if (_isLoading) return;

      final String name = _nameController.text;
      final String login = _loginController.text;
      final String email = _emailController.text;
      final String password = _passwordController.text;
      final String confirmPassword = _confirmPasswordController.text;

      if (password != confirmPassword) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('As senhas não coincidem!')),
        );
        return;
      }

      setState(() {
        _isLoading = true;
      });

      try {
        final UserRegisterRequestDTO userRegisterRequest = UserRegisterRequestDTO((b) => b
          ..name = name
          ..login = login
          ..email = email
          ..password = password
          ..confirmPassword = confirmPassword,
        );

        // Chama o método 'register' do seu RegistrationControllerApi
        // o parâmetro esperado é 'userRegisterRequestDTO'
        await _registrationApi.register(userRegisterRequestDTO: userRegisterRequest);

        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Usuário "$login" cadastrado com sucesso!'),
              backgroundColor: Colors.green,
            ),
          );
          Navigator.of(context).pop(); // Volta para a tela anterior
        }
      } catch (e) {
        print('Erro ao cadastrar usuário: $e');
        if (mounted) {
          String errorMessage = 'Erro ao cadastrar usuário. Verifique sua conexão e os dados.';
          // Melhor tratamento de erro para DioException
          if (e is DioException) {
            if (e.response != null) {
              // Exemplo: se o backend retornar uma mensagem de erro no corpo da resposta
              if (e.response!.data is Map && e.response!.data.containsKey('message')) {
                errorMessage = e.response!.data['message'];
              } else if (e.response!.statusCode == 409) { // Exemplo de status para conflito (e-mail/login já existem)
                errorMessage = 'Email ou nickname já cadastrado.';
              } else {
                errorMessage = 'Erro ${e.response!.statusCode}: ${e.response!.statusMessage}';
              }
            } else {
              // Erros de conexão (sem resposta do servidor)
              errorMessage = 'Não foi possível conectar ao servidor. Verifique sua rede ou a URL do backend.';
            }
          }
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(errorMessage),
              backgroundColor: AppColors.error,
            ),
          );
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
          'Cadastro de Usuário',
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 24),

              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Nome Completo',
                  labelStyle: const TextStyle(color: AppColors.darkText),
                  filled: true,
                  fillColor: AppColors.surface,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: AppColors.border, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: AppColors.highlight, width: 2.0),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira seu nome completo.';
                  }
                  return null;
                },
                style: const TextStyle(color: AppColors.darkText),
              ),
              const SizedBox(height: 16),

              TextFormField(
                controller: _loginController,
                decoration: InputDecoration(
                  labelText: 'Nickname/Apelido (@usuario)',
                  labelStyle: const TextStyle(color: AppColors.darkText),
                  filled: true,
                  fillColor: AppColors.surface,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: AppColors.border, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: AppColors.highlight, width: 2.0),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira seu nickname.';
                  }
                  return null;
                },
                style: const TextStyle(color: AppColors.darkText),
              ),
              const SizedBox(height: 16),

              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: const TextStyle(color: AppColors.darkText),
                  filled: true,
                  fillColor: AppColors.surface,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: AppColors.border, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: AppColors.highlight, width: 2.0),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira seu email.';
                  }
                  if (!value.contains('@')) {
                    return 'Por favor, insira um email válido.';
                  }
                  return null;
                },
                style: const TextStyle(color: AppColors.darkText),
              ),
              const SizedBox(height: 16),

              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  labelStyle: const TextStyle(color: AppColors.darkText),
                  filled: true,
                  fillColor: AppColors.surface,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: AppColors.border, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: AppColors.highlight, width: 2.0),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira sua senha.';
                  }
                  if (value.length < 6) {
                    return 'A senha deve ter pelo menos 6 caracteres.';
                  }
                  return null;
                },
                style: const TextStyle(color: AppColors.darkText),
              ),
              const SizedBox(height: 16),

              TextFormField(
                controller: _confirmPasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirmar Senha',
                  labelStyle: const TextStyle(color: AppColors.darkText),
                  filled: true,
                  fillColor: AppColors.surface,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: AppColors.border, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: AppColors.highlight, width: 2.0),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, confirme sua senha.';
                  }
                  if (value != _passwordController.text) {
                    return 'As senhas não coincidem.';
                  }
                  return null;
                },
                style: const TextStyle(color: AppColors.darkText),
              ),
              const SizedBox(height: 24),

              ElevatedButton(
                onPressed: _isLoading ? null : _registerUser,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.highlight,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: _isLoading
                    ? const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                )
                    : const Text(
                  'Cadastrar',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}