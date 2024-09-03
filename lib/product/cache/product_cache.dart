import 'package:hive_example/product/cache/core/index.dart';
import 'package:hive_example/product/cache/hive/hive_adapter_id.dart';
import 'package:hive_example/product/cache/hive/hive_cache_operation.dart';
import 'package:hive_example/product/service/model/register.dart';
import 'package:hive_example/product/service/model/user.dart';

final class ProductCache {
  ProductCache({
    required CacheManager cacheManager,
  }) : _cacheManager = cacheManager;

  final CacheManager _cacheManager;

  Future<void> init() async {
    await _cacheManager.init();
  }

  void register() {
    _cacheManager
      ..register<User>(
        model: User(),
        hiveAdapterId: HiveAdapterId.user,
      )
      ..register<Register>(
        model: Register(),
        hiveAdapterId: HiveAdapterId.register,
      );
  }

  late final HiveCacheOperation<User> userCacheOperation =
      HiveCacheOperation<User>();
  late final HiveCacheOperation<Register> registerCacheOperation =
      HiveCacheOperation<Register>();
}
