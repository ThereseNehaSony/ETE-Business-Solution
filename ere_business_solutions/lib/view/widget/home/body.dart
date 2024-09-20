import 'package:ere_business_solutions/controller/auth_controller.dart';
import 'package:ere_business_solutions/model/user_model.dart';
import 'package:ere_business_solutions/view/widget/home/card.dart';
import 'package:flutter/material.dart';

class BodyWidget extends StatelessWidget {
  final LoginResponse loginResponse;
  final LoginController controller;

  const BodyWidget({Key? key, required this.loginResponse, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue.shade100, Colors.white],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: SuccessCard(loginResponse: loginResponse, controller: controller),
      ),
    );
  }
}