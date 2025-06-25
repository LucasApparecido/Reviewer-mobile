import 'package:flutter/material.dart';
import 'package:reviewer_mobile/theme/app_colors.dart';
import 'package:reviewer_mobile/theme/theme.dart';
import 'package:routefly/routefly.dart';

import 'my_app.route.dart';

part 'my_app.g.dart';

void main() {
  runApp(const MyApp());
}

@Main()
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  ThemeData createTheme(BuildContext context, Brightness brightness) {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        brightness: brightness,
      ),
      brightness: brightness,
      useMaterial3: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'MEUeG Controle',
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        darkTheme: createTheme(context, Brightness.dark),
        themeMode: ThemeMode.system,
        routerConfig: Routefly.routerConfig(
          routes: routes,
          initialPath: routePaths.auth.login,
        ));
  }
}