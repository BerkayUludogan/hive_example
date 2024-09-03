import 'package:flutter/material.dart';
import 'package:hive_example/feature/auth/register/view/register_view.dart';
import 'package:hive_example/feature/auth/register/view_model/register_view_model.dart';
import 'package:hive_example/product/state/container/index.dart';

mixin RegisterViewMixin on State<RegisterView> {
  RegisterViewModel get registerViewModel => _registerViewModel;

  late RegisterViewModel _registerViewModel;

  @override
  void initState() {
    super.initState();
    _registerViewModel = RegisterViewModel(
      registerCacheOperations:
          ProductStateItems.productCacheManager.registerCacheOperation,
    );
    print(
      ProductStateItems.productCacheManager.registerCacheOperation
          .get('1725361971648')!
          .username,
    );
    ProductStateItems.productCacheManager.registerCacheOperation
        .get('1725302998879');
  }
}
