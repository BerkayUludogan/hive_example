import 'package:hive_example/product/cache/core/model/cache_model.dart';
import 'package:hive_example/product/cache/hive/hive_adapter_id.dart';

abstract class CacheManager<T extends CacheModel> {
  CacheManager({required this.path});

  Future<void> init();

  void register<T extends CacheModel<T>>({
    required T model,
    required HiveAdapterId hiveAdapterId,
  });

  final String? path;
}
