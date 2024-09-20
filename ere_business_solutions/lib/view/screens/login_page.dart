import 'package:ere_business_solutions/view/widget/login/bacground_image.dart';
import 'package:ere_business_solutions/view/widget/login/login_form.dart';
import 'package:ere_business_solutions/view/widget/login/logo_widget.dart';
import 'package:ere_business_solutions/view/widget/login/propt_acc_creat.dart';
import 'package:ere_business_solutions/view/widget/login/tearms_contisyion.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/auth_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.put(LoginController());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const BackgroundImage(),
          const LogoSection(),
          Positioned(
            top: 150,
            left: 0,
            right: 0,
            child:  Center(
              child: Image.asset("assets/Frame 23.png"),
            ),
          ),
          Positioned(
            top: 240,
            left: 2,
            right: 2,
            child: LoginFormWidget(controller: controller),
          ),
          const CreateAccountPrompt(),
          const TermsAndConditions(),
        ],
      ),
    );
  }
}



