import 'package:hive_example/product/cache/shared/key/shared_key.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedCacheOperations {
  late final SharedPreferences _prefs;

  T? read<T>(SharedKey key) => _prefs.get(key.name) as T?;

  Future<void> clear() => _prefs.clear();

  Future<void> write(SharedKey key, Object value) async {
    switch (value) {
      case int:
        await _prefs.setInt(key.name, value as int);
      case String:
        await _prefs.setString(key.name, value as String);
      case bool:
        await _prefs.setBool(key.name, value as bool);
      case double:
        await _prefs.setDouble(key.name, value as double);
      default:
    }
  }

  Future<void> init() async => _prefs = await SharedPreferences.getInstance();
}
