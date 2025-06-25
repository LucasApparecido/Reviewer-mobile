import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reviewer_mobile/api/api_client.dart';
import 'package:reviewer_mobile/core/auth/auth_service.dart';
import 'package:reviewer_mobile/routes.dart'; // Importa as rotas
import 'package:reviewer_mobile/services/review_service.dart';
import 'package:reviewer_mobile/theme/app_theme.dart';
import 'package:reviewerapi/reviewerapi.dart';
import 'package:dio/dio.dart';
import 'package:routefly/routefly.dart';
import 'core/auth/token_service.dart';

void main() {
  final tokenService = TokenService();
  final dio = createApiClient(tokenService);
  final apiClient = Reviewerapi(dio: dio); 

  final authService = AuthService(apiClient.getAuthControllerApi(), apiClient.getRegistrationControllerApi(), tokenService);
  final reviewService = ReviewService(apiClient.getReviewControllerApi());

  runApp(
    MultiProvider(
      providers: [
        Provider<AuthService>(create: (_) => authService),
        Provider<ReviewService>(create: (_) => reviewService),
      ],
      child: const MyApp(), 
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Reviewer App',
      debugShowCheckedModeBanner: false,
      theme: buildLightTheme(),
      darkTheme: buildDarkTheme(), 
      themeMode: ThemeMode.system,
      
      routerConfig: Routefly.routerConfig(
        routes: routes,
        initialPath: routePaths.auth.login, 
      ),
    );
  }
}