import 'package:hive_example/product/cache/core/index.dart';
import 'package:hive_example/product/cache/hive/hive_adapter_id.dart';
import 'package:hive_example/product/cache/hive/hive_operation.dart';
import 'package:hive_example/product/model/user.dart';

final class ProductCache {
  ProductCache({required CacheManager cacheManager})
      : _cacheManager = cacheManager;

  final CacheManager _cacheManager;

  Future<void> init() async {
    await _cacheManager.init();
  }

  void register() {
    _cacheManager.register<User>(
      model: User(),
      hiveAdapterId: HiveAdapterId.user,
    );
  }

  late final HiveOperation<User> userCacheOperation = HiveOperation<User>();
}