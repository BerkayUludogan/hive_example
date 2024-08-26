import 'package:hive_example/product/cache/core/index.dart';
import 'package:hive_example/product/cache/hive/hive_adapter_id.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';

final class HiveCacheManager extends CacheManager {
  HiveCacheManager({super.path});

  @override
  Future<void> init() async {
    final documentPath =
        path ?? (await getApplicationDocumentsDirectory()).path;
    await Hive.initFlutter(documentPath);
  }

  @override
  void register<T extends CacheModel<T>>({
    required T model,
    required HiveAdapterId hiveAdapterId,
  }) {
    Hive.registerAdapter<T>(
      CacheAdapter<T>(
        fromJson: model.fromJson,
        hiveAdapterId: hiveAdapterId,
      ),
    );
  }
}
