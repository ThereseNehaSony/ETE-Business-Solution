import 'package:flutter/material.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 70.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/icon.jpg", height: 45),
            const SizedBox(width: 8),
            Image.asset("assets/text.jpg", height: 50),
          ],
        ),
      ),
    );
  }
}