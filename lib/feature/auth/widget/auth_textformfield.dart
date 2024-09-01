import 'package:flutter/material.dart';

final class AuthTextformfield extends StatelessWidget {
  AuthTextformfield({super.key, this.hintText});
  String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: hintText, filled: true),
    );
  }
}
