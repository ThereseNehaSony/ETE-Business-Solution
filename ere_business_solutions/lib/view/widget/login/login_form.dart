import 'package:ere_business_solutions/controller/auth_controller.dart';
import 'package:ere_business_solutions/view/widget/login/text_form_widget.dart';
import 'package:flutter/material.dart';

class LoginFormWidget extends StatelessWidget {
  final LoginController controller;

  const LoginFormWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LoginForm(
          emailController: controller.usernameController,
          passwordController: controller.passwordController,
          loginCallback: controller.loginUser,
        ),
      ),
    );
  }
}