import 'package:flutter/material.dart';
import 'package:hive_example/feature/auth/widget/column_textformfield.dart';
import 'package:hive_example/product/constants/string_constants.dart';
import 'package:hive_example/product/widget/button/normal_button.dart';
import 'package:hive_example/product/widget/custom_app_bar.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: StringConstants.registryView,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ColumnTextformfield(),
              NormalButton(text: StringConstants.signUp, onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
