part of '../view/register_view.dart';

class ColumnTextformfieldButton extends StatelessWidget {
  ColumnTextformfieldButton({
    required this.usernameController,
    required this.passwordController,
    super.key,
  });
  TextEditingController usernameController;
  TextEditingController passwordController;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AuthTextformfield(
          controller: usernameController,
          hintText: StringConstants.yourUsername,
        ),
        const SizedBox().hight,
        AuthTextformfield(
          controller: passwordController,
          hintText: StringConstants.enterYourPassword,
        ),
        const SizedBox().hight,
        AuthTextformfield(
          hintText: StringConstants.enterYourPassword,
        ),
        const SizedBox().hight,
      ],
    );
  }
}
