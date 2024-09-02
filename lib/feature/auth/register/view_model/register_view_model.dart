import 'package:flutter/material.dart';
import 'package:hive_example/feature/auth/register/view/register_view.dart';

abstract class RegisterViewModel extends State<RegisterView> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();

    usernameController.text;
    passwordController.text;
  }

  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
    passwordController.dispose();
  }
}
