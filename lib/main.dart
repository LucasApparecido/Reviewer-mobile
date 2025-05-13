import 'package:flutter/material.dart';
import 'package:routefly/routefly.dart';
import 'package:reviewer_mobile/services/auth_service.dart';
import 'main.route.dart';
import 'package:reviewer_mobile/theme/theme.dart';

part 'main.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final authService = AuthService();
  await authService.init();

  runApp(ReviewSocialApp(authService: authService));
}

@Main()
class ReviewSocialApp extends StatelessWidget {
  final AuthService authService;

  const ReviewSocialApp({super.key, required this.authService});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: authService.isAuthenticated,
      builder: (context, isAuthenticated, _) {
        return MaterialApp.router(
          theme: appTheme,
          routerConfig: Routefly.routerConfig(
            routes: routes,
            initialPath: routePaths.login,
            notFoundPath: '404',
          ),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
