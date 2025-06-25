import 'package:flutter/material.dart';
import 'package:reviewer_mobile/theme/app_colors.dart';
import 'package:routefly/routefly.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:reviewerapi/reviewerapi.dart';
import 'package:dio/dio.dart';

import '../../my_app.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController(); // Provavelmente o campo 'login' do AuthDTO
  final _passwordController = TextEditingController(); // Campo 'password' do AuthDTO
  bool _isLoading = false;

  final Dio _dio = Dio(BaseOptions(baseUrl: 'http://10.0.2.2:8080/api/v1'));

  late final AuthControllerApi _authApi;

  @override
  void initState() {
    super.initState();
    // Inicializa o AuthControllerApi com Dio e serializers.
    _authApi = AuthControllerApi(_dio, serializers);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _fazerLogin() async {
    if (_formKey.currentState!.validate()) {
      if (_isLoading) return;

      setState(() {
        _isLoading = true;
      });

      try {
        final AuthDTO authRequest = AuthDTO((b) => b
          ..login = _emailController.text
          ..password = _passwordController.text,
        );

        final response = await _authApi.login(authDTO: authRequest);

        final Map<String, dynamic> responseData = response.data?.asMap?.cast<String, dynamic>() ?? {};

        final String? accessToken = responseData['accessToken'];
        final String? refreshToken = responseData['refreshToken'];

        if (accessToken != null && refreshToken != null) {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setString('accessToken', accessToken);
          await prefs.setString('refreshToken', refreshToken);

          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Login realizado com sucesso!'),
                backgroundColor: Colors.green,
              ),
            );
            Routefly.navigate(routePaths.appHome); // Certifique-se que routePaths.appHome está disponível
          }
        } else {
          // Se a API não retornou os tokens esperados
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Resposta de login inválida do servidor.'),
                backgroundColor: AppColors.error,
              ),
            );
          }
        }
      } on DioException catch (e) {
        // Tratamento de erros específicos do Dio
        print('Erro de login (DioException): $e');
        if (mounted) {
          String errorMessage = 'Erro ao fazer login. Verifique seu usuário e senha.';
          if (e.response != null) {
            if (e.response!.statusCode == 401) {
              errorMessage = 'Usuário ou senha inválidos.';
            } else if (e.response!.data is Map && e.response!.data.containsKey('message')) {
              errorMessage = e.response!.data['message'];
            } else {
              errorMessage = 'Erro ${e.response!.statusCode}: ${e.response!.statusMessage}';
            }
          } else {
            errorMessage = 'Não foi possível conectar ao servidor. Verifique sua rede ou a URL do backend.';
          }
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(errorMessage),
              backgroundColor: AppColors.error,
            ),
          );
        }
      } catch (e) {
        // Tratamento de outros erros genéricos
        print('Erro de login (Genérico): $e');
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Ocorreu um erro inesperado ao fazer login.'),
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
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        centerTitle: true,
        title: const Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _emailController,
                style: const TextStyle(fontSize: 18),
                decoration: InputDecoration(
                  labelText: 'Usuário (Email ou Nickname)',
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira seu usuário.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _passwordController,
                style: const TextStyle(fontSize: 18),
                decoration: InputDecoration(
                  labelText: 'Senha',
                  prefixIcon: const Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira sua senha.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _isLoading ? null : _fazerLogin,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary, // Cor do botão ajustada para primary
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: _isLoading
                      ? const CircularProgressIndicator(color: Colors.white)
                      : const Text(
                    'Entrar',
                    style: TextStyle(fontSize: 18, color: Colors.white), // Cor do texto branca
                  ),
                ),
              ),
              const SizedBox(height: 16),

              TextButton(
                onPressed: () {
                  Routefly.push(routePaths.auth.register);
                },
                child: Text(
                  'Não tem uma conta? Cadastre-se',
                  style: TextStyle(color: AppColors.primary),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
