import 'package:flutter/material.dart';

class CreateAccountPrompt extends StatelessWidget {
  const CreateAccountPrompt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: 550,
      left: 0,
      right: 0,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          "Don’t have an account? Create One",
          style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
        ),
      ),
    );
  }
}