import 'package:flutter/material.dart';
import 'package:hive_example/feature/auth/register/mixin/register_view_mixin.dart';
import 'package:hive_example/feature/auth/widget/auth_textformfield.dart';
import 'package:hive_example/product/constants/extensions/sizedbox_extension.dart';
import 'package:hive_example/product/constants/strings/string_constants.dart';
import 'package:hive_example/product/widget/button/normal_button.dart';
import 'package:hive_example/product/widget/custom_app_bar.dart';

part '../widget/registry_textformfield_button.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> with RegisterViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: StringConstants.registryView,
        centerTitle: true,
      ),
      body: _body(),
    );
  }

  Center _body() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColumnTextformfieldButton(
              usernameController: registerViewModel.usernameController,
              passwordController: registerViewModel.passwordController,
            ),
            NormalButton(
              text: StringConstants.signUp,
              onPressed: () {
                registerViewModel.saveUserToCache();
              },
            ),
          ],
        ),
      ),
    );
  }
}
