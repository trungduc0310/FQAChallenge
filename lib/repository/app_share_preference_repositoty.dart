import 'package:shared_preferences/shared_preferences.dart';

abstract class AppSharedPreferenceRepository {
  Future<void> setToken(String token);

  Future<String?> getToken();

  Future<bool> isLogin();
}

class AppSharedPrefImp extends AppSharedPreferenceRepository {
  static const prefKeyToken = "pref_key_token";

  final _sharePref = SharedPreferences.getInstance();

  @override
  Future<String?> getToken() async {
    final pref = await _sharePref;
    return pref.getString(prefKeyToken);
  }

  @override
  Future<bool> isLogin() async {
    final token = await getToken();
    return token?.isNotEmpty ?? false;
  }

  @override
  Future<void> setToken(String token) async {
    final pref = await _sharePref;
    pref.setString(prefKeyToken, token);
  }
}
