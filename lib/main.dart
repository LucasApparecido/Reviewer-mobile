import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'api/app_api.dart';
import 'core/config_state.dart';
import 'core/security_store.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final storage = SecurityStore();
  final configState = ConfigState(prefs: storage); // <--- Mudei 'state' para 'configState' para consistência
  await configState.loadInitialState(); // Garante que o token seja carregado

  final appApi = AppApi(config: configState); // Use 'configState' aqui também

  runApp(
      MultiProvider(
        providers: [
          Provider<AppApi>(
            create: (_) => appApi,
            dispose: (_, instance) => instance.dispose(),
          ),
          Provider<ConfigState>(
            create: (_) => configState,
            dispose: (_, instance) => instance.dispose(),
          )
        ],
        child: const MyApp(),
      ));
}
