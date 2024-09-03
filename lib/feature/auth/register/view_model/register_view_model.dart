import 'package:flutter/material.dart';
import 'package:hive_example/feature/auth/register/view/register_view.dart';
import 'package:hive_example/product/base/base_cubit.dart';
import 'package:hive_example/product/cache/hive/index.dart';
import 'package:hive_example/product/service/model/index.dart';

class RegisterViewModel extends BaseCubit<RegisterView> {
  RegisterViewModel({
    required HiveCacheOperation<Register> registerCacheOperations,
  })  : _registerCacheOperation = registerCacheOperations,
        super(const RegisterView());

  late final HiveCacheOperation<Register> _registerCacheOperation;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void saveUserToCache() {
    final item = Register();
    _registerCacheOperation.add(
      item
        ..id = DateTime.now().millisecondsSinceEpoch
        ..username = usernameController.text
        ..password = passwordController.text,
    );
    print(item.id);
  }
}
