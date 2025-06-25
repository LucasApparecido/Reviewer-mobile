import 'package:signals/signals.dart';
import 'package:reviewer_mobile/core/preference_store_interface.dart';

class ConfigState {
  final PreferenceStore prefs;
  final String tokenKey = 'jwt_token';

  late final Signal<String> token;
  late final Signal<String> url;

  ConfigState({required this.prefs}) {
    token = signal<String>("");
    url = signal<String>("http://10.0.2.2:8080");

    loadInitialState();
  }

  Future<void> loadInitialState() async {
    final storedToken = await prefs.read(tokenKey);
    if (storedToken.isNotEmpty) {
      token.value = storedToken;
    }
  }

  void setToken(String newToken) {
    token.value = newToken;
    prefs.write(tokenKey, newToken);
  }

  void clearToken() {
    token.value = "";
    prefs.write(tokenKey, "");
  }

  void dispose() {
  }
}