import 'dart:convert';

import 'package:hive_example/product/cache/core/model/cache_model.dart';
import 'package:hive_example/product/cache/hive/hive_adapter_id.dart';
import 'package:hive_flutter/adapters.dart';

class CacheAdapter<T extends CacheModel> extends TypeAdapter<T> {
  CacheAdapter({
    required this.fromJson,
    required this.hiveAdapterId,
  });

  /// For hive register adapter id
  final HiveAdapterId hiveAdapterId;
  final T Function(Map<String, dynamic>) fromJson;

  @override
  T read(BinaryReader reader) {
    final read = reader.read();
    final jsonConverted = jsonEncode(read);
    return fromJson(
      json.decode(jsonConverted) as Map<String, dynamic>,
    );
  }

  @override
  void write(BinaryWriter writer, T obj) {
    writer.write(obj.toJson());
  }

  @override
  int get typeId => hiveAdapterId.value;
}
