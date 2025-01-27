import 'package:hive_example/product/cache/core/model/cache_model.dart';

abstract class CacheOperation<T extends CacheModel> {
  void add(T item);
  void addAll(List<T> item);
  void update(T item);
  void remove(String id);

  List<T> getAll();
  T? get(String id);
}
