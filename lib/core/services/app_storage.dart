import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_storage.g.dart';

@Riverpod(keepAlive: true)
AppStorage appStorage(Ref ref) {
  return AppStorage(SharedPreferencesAsync());
}

class AppStorage {
  AppStorage(this._prefs);

  final SharedPreferencesAsync _prefs;

  Future<String?> getString(String key) => _prefs.getString(key);

  Future<void> setString(String key, String value) {
    return _prefs.setString(key, value);
  }

  Future<bool?> getBool(String key) => _prefs.getBool(key);

  Future<void> setBool(String key, bool value) {
    return _prefs.setBool(key, value);
  }

  Future<int?> getInt(String key) => _prefs.getInt(key);

  Future<void> setInt(String key, int value) {
    return _prefs.setInt(key, value);
  }

  Future<void> remove(String key) => _prefs.remove(key);

  Future<void> clear() => _prefs.clear();
}
