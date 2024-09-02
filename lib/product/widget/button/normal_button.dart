import 'package:flutter/material.dart';

class NormalButton extends StatelessWidget {
  const NormalButton({required this.text, required this.onPressed, super.key});
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        textStyle: Theme.of(context).textTheme.titleMedium,
      ),
      onPressed: onPressed,
      child: Center(
        child: Text(
          text,
        ),
      ),
    );
  }
}
