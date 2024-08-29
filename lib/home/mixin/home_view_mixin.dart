import 'package:flutter/material.dart';
import 'package:hive_example/home/view/home_view.dart';
import 'package:hive_example/home/view_model/home_view_model.dart';
import 'package:hive_example/product/state/container/index.dart';

mixin HomeViewMixin on State<HomeView> {
  HomeViewModel get homeViewModel => _homeViewModel;
  late HomeViewModel _homeViewModel;

  @override
  void initState() {
    super.initState();
    _homeViewModel = HomeViewModel(
      userCacheOperations:
          ProductStateItems.productCacheManager.userCacheOperation,
    );
    _homeViewModel.fetchUsers();
  }
}
