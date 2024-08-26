import 'package:hive_example/product/product_cache.dart';
import 'package:hive_example/product/state/container/product_state_container.dart';

final class ProductStateItems {
  const ProductStateItems._();

  static ProductCache get productCacheManager =>
      ProductStateContainer.read<ProductCache>();
}
