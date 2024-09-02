import 'package:flutter/material.dart';
import 'package:hive_example/feature/auth/login/view/login_view.dart';

abstract class LoginViewModel extends State<LoginView> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
}
