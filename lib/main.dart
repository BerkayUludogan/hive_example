import 'package:flutter/material.dart';
import 'package:hive_example/home/view/home_view.dart';
import 'package:hive_example/product/init/application_initialize.dart';

void main() async {
  await ApplicationInitialize().make();
  runApp(const _MyApp());
}

class _MyApp extends StatelessWidget {
  const _MyApp();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomeView(),
    );
  }
}
