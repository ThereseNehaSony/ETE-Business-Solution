import 'package:ere_business_solutions/controller/auth_controller.dart';
import 'package:ere_business_solutions/model/user_model.dart';
import 'package:ere_business_solutions/view/widget/home/appbar_widget.dart';
import 'package:ere_business_solutions/view/widget/home/body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessPage extends StatelessWidget {
  final LoginResponse loginResponse;

  SuccessPage({Key? key, required this.loginResponse}) : super(key: key);

  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: BodyWidget(loginResponse: loginResponse, controller: controller),
    );
  }
}






