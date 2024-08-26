part of '../../hive/hive_operation.dart';

mixin CacheManagerMixin<T> {
  Box<T>? _box;

  Future<void> open() async {
    if (!(_box?.isOpen ?? false)) {
      _box = await Hive.openBox<T>(T.toString());
    }
  }

  Future<void> clear() => _box!.clear();
}
