import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reviewer_mobile/core/auth/auth_service.dart';
import 'package:reviewer_mobile/features/auth/register_view_model.dart';
import 'package:routefly/routefly.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RegisterViewModel(context.read<AuthService>()),
      child: const _RegisterView(),
    );
  }
}

class _RegisterView extends StatefulWidget {
  const _RegisterView();
  @override
  State<_RegisterView> createState() => __RegisterViewState();
}

class __RegisterViewState extends State<_RegisterView> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _loginController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _loginController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> _submitRegister() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;

    final viewModel = context.read<RegisterViewModel>();
    final success = await viewModel.register(
      name: _nameController.text,
      login: _loginController.text,
      email: _emailController.text,
      password: _passwordController.text,
      confirmPassword: _confirmPasswordController.text,
    );

    if (success && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Cadastro realizado com sucesso! Faça o login.'), backgroundColor: Colors.green),
      );
      Routefly.pop(context);
    } else if(mounted) {
       ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(viewModel.errorMessage), backgroundColor: Colors.red),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<RegisterViewModel>();
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Crie sua Conta')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('É rápido e fácil.', style: theme.textTheme.headlineSmall),
              const SizedBox(height: 32),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Nome Completo', border: OutlineInputBorder()),
                validator: (v) => (v?.isEmpty ?? true) ? 'O nome é obrigatório' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _loginController,
                decoration: const InputDecoration(labelText: 'Login (apelido)', border: OutlineInputBorder()),
                validator: (v) => (v?.isEmpty ?? true) ? 'O login é obrigatório' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'E-mail', border: OutlineInputBorder()),
                keyboardType: TextInputType.emailAddress,
                validator: (v) {
                  if (v?.isEmpty ?? true) return 'O e-mail é obrigatório';
                  if (!v!.contains('@')) return 'E-mail inválido';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: 'Senha', border: OutlineInputBorder()),
                obscureText: true,
                validator: (v) {
                  if (v?.isEmpty ?? true) return 'A senha é obrigatória';
                  if (v!.length < 8) return 'A senha deve ter no mínimo 8 caracteres';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _confirmPasswordController,
                decoration: const InputDecoration(labelText: 'Confirmar Senha', border: OutlineInputBorder()),
                obscureText: true,
                validator: (v) {
                  if (v != _passwordController.text) return 'As senhas não coincidem';
                  return null;
                },
              ),
              const SizedBox(height: 32),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: viewModel.state == ViewState.loading ? null : _submitRegister,
                  child: viewModel.state == ViewState.loading
                      ? const CircularProgressIndicator(color: Colors.white)
                      : const Text('Cadastrar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}