import 'package:flutter/material.dart';

final class AuthTextformfield extends StatelessWidget {
  AuthTextformfield({super.key, this.hintText, this.controller});
  String? hintText;
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
      ),
    );
  }
}
