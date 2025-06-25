import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reviewer_mobile/features/auth/login_view_model.dart';
import 'package:reviewer_mobile/routes.dart';
import 'package:routefly/routefly.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginViewModel(context.read()),
      child: const _LoginView(),
    );
  }
}

class _LoginView extends StatefulWidget {
  const _LoginView();
  @override
  State<_LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<_LoginView> {
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _loginController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submitLogin() async {
    if (_formKey.currentState?.validate() ?? false) {
      final viewModel = context.read<LoginViewModel>();
      final success = await viewModel.login(
        _loginController.text,
        _passwordController.text,
      );

      if (success && mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Login bem-sucedido!'), backgroundColor: Colors.green),
        );
        Routefly.navigate(routePathHome);
      } else if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(viewModel.errorMessage), backgroundColor: Colors.red),
        );
      }
    }
  }
  
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<LoginViewModel>();

    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Bem-vindo ao Reviewer', style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: 32),
                TextFormField(
                  controller: _loginController,
                  decoration: const InputDecoration(labelText: 'Login ou Email', border: OutlineInputBorder()),
                  validator: (value) => (value?.isEmpty ?? true) ? 'Campo obrigatório' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(labelText: 'Senha', border: OutlineInputBorder()),
                  obscureText: true,
                  validator: (value) => (value?.isEmpty ?? true) ? 'Campo obrigatório' : null,
                ),
                const SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: viewModel.state == ViewState.loading ? null : _submitLogin,
                    child: viewModel.state == ViewState.loading
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text('Entrar'),
                  ),
                ),
                TextButton(
                  onPressed: () => Routefly.navigate(routePathRegister),
                  child: const Text('Não tem uma conta? Cadastre-se'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}