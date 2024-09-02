import 'package:flutter/material.dart';
import 'package:hive_example/feature/auth/widget/auth_textformfield.dart';
import 'package:hive_example/product/constants/extensions/sizedbox_extension.dart';
import 'package:hive_example/product/constants/strings/string_constants.dart';
import 'package:hive_example/product/widget/button/normal_button.dart';
import 'package:hive_example/product/widget/custom_app_bar.dart';

part '../widget/login_textform_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  CustomAppBar _appBar() {
    return const CustomAppBar(
      title: StringConstants.loginView,
      centerTitle: true,
    );
  }

  Padding _body() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: LoginTextFormButton(),
    );
  }
}
