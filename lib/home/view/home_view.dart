import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_example/home/mixin/home_view_mixin.dart';
import 'package:hive_example/home/state/home_state.dart';
import 'package:hive_example/home/view_model/home_view_model.dart';
import 'package:hive_example/product/service/model/user.dart';
import 'package:hive_example/product/widget/custom_separeted.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => homeViewModel,
        child: BlocBuilder<HomeViewModel, HomeState>(
          builder: (context, state) => _body(),
        ),
      ),
    );
  }

  Widget _body() {
    return BlocBuilder<HomeViewModel, HomeState>(
      builder: (context, state) {
        return !state.loading && mounted
            ? state.users != null
                ? CustomSeparated(
                    items: state.users!,
                    onPressed: (User item) {},
                  )
                : const Center(
                    child: Text('Kullanıcılar yok'),
                  )
            : const Center(
                child: CircularProgressIndicator(),
              );
      },
    );
  }
}
