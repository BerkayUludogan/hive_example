import 'package:get_it/get_it.dart';
import 'package:hive_example/product/cache/hive/hive_cache_manager.dart';
import 'package:hive_example/product/product_cache.dart';

final class ProductStateContainer {
  const ProductStateContainer._();
  static final _getIt = GetIt.instance;

  static void setup() {
    _getIt.registerSingleton<ProductCache>(
      ProductCache(cacheManager: HiveCacheManager()),
    );
  }

  static T read<T extends Object>() {
    return _getIt<T>();
  }
}
