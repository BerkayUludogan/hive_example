import 'package:hive_example/product/cache/core/model/cache_model.dart';
import 'package:hive_example/product/cache/hive/hive_adapter_id.dart';

/// The CacheManager class is an abstract class
abstract class CacheManager {
  CacheManager({this.path});

  /// Make your cache initialization here.
  Future<void> init();

  /// Register cache models to [Hive]
  void register<T extends CacheModel<T>>({
    required T model,
    required HiveAdapterId hiveAdapterId,
  });

  /// [path] is the path to the directory for example testing.
  final String? path;
}
