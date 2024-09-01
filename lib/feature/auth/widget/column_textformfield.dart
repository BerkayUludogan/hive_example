import 'package:flutter/material.dart';
import 'package:hive_example/feature/auth/widget/auth_textformfield.dart';
import 'package:hive_example/product/constants/string_constants.dart';

class ColumnTextformfield extends StatelessWidget {
  const ColumnTextformfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AuthTextformfield(
          hintText: StringConstants.yourUsername,
        ),
        const SizedBox(
          height: 10,
        ),
        AuthTextformfield(
          hintText: StringConstants.enterYourPassword,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
