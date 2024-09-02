part of '../view/login_view.dart';

class LoginTextFormButton extends StatelessWidget {
  const LoginTextFormButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AuthTextformfield(
          hintText: StringConstants.yourUsername,
        ),
        const SizedBox().hight,
        AuthTextformfield(
          hintText: StringConstants.enterYourPassword,
        ),
        const SizedBox().hight,
        NormalButton(text: StringConstants.signIn, onPressed: () {}),
      ],
    );
  }
}
