import 'package:hive_example/product/cache/core/cache_operation.dart';
import 'package:hive_example/product/cache/core/model/cache_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

part '../core/mixin/cache_manager_mixin.dart';

final class HiveCacheOperation<T extends CacheModel> extends CacheOperation<T>
    with CacheManagerMixin<T> {
  @override
  void add(T item) {
    _box?.put(item.cacheId, item);
  }

  @override
  void addAll(List<T> items) {
    final map = <String, T>{
      for (final item in items) item.cacheId: item,
    };
    _box?.putAll(map);
  }

  @override
  void update(T item) {
    _box?.put(item.cacheId, item);
  }

  @override
  T? get(String id) {
    return _box?.get(id);
  }

  @override
  List<T> getAll() {
    return _box?.values.cast<T>().toList() ?? [];
  }

  @override
  void remove(String id) {
    _box?.delete(id);
  }
}
