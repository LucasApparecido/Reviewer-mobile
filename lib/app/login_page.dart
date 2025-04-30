import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../services/openapi/auth/auth_controller_api.dart';
import '../services/openapi/api_client.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FlutterSecureStorage _secureStorage = FlutterSecureStorage();
  bool _isLoading = false;

  void _login() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final apiClient = ApiClient();
      final authApi = AuthControllerApi(apiClient);

      final response = await authApi.login(
        email: _emailController.text,
        password: _passwordController.text,
      );

      if (response.token != null) {
        // Store the token securely
        await _secureStorage.write(key: 'jwt_token', value: response.token);

        // Configure ApiClient to use the token for future requests
        apiClient.addDefaultHeader('Authorization', 'Bearer ${response.token}');

        Navigator.pushReplacementNamed(context, '/home');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Login failed. Please try again.')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('An error occurred: $e')),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            _isLoading
                ? CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: _login,
                    child: Text('Login'),
                  ),
          ],
        ),
      ),
    );
  }
}