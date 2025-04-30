import 'package:flutter/material.dart';
import 'package:routefly/routefly.dart';
import 'main.route.dart'; // GERADO automaticamente depois

part 'main.g.dart'; // Define o arquivo gerado

void main() {
  runApp(const ReviewSocialApp());
}

@Main()
class ReviewSocialApp extends StatelessWidget {
  const ReviewSocialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Routefly.routerConfig(
        routes: routes, // Rota gerada automaticamente
        initialPath: routePaths.appHome,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
