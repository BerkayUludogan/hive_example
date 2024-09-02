part of '../view/register_view.dart';

class ColumnTextformfieldButton extends StatelessWidget {
  const ColumnTextformfieldButton({super.key});

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
        AuthTextformfield(
          hintText: StringConstants.enterYourPassword,
        ),
        const SizedBox().hight,
        NormalButton(text: StringConstants.signUp, onPressed: () {}),
      ],
    );
  }
}
