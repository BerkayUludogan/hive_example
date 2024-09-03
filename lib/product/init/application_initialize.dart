import 'package:flutter/material.dart';
import 'package:hive_example/product/state/container/product_state_container.dart';
import 'package:hive_example/product/state/container/product_state_items.dart';

@immutable
final class ApplicationInitialize {
  Future<void> make() async {
    WidgetsFlutterBinding.ensureInitialized();
    await _hive();
  }

  Future<void> _hive() async {
    ProductStateContainer.setup();

    final productCache = ProductStateItems.productCacheManager;

    await productCache.init();
    productCache.register();
    await productCache.userCacheOperation.open();
    await productCache.registerCacheOperation.open();
  }
}
