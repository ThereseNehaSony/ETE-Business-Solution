import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.all(13.0),
        child: Text(
          "By continuing, you are agreeing to our Terms and Conditions.",
          style: TextStyle(color: Colors.white, fontSize: 10),
        ),
      ),
    );
  }
}