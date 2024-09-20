import 'package:ere_business_solutions/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class LoginForm extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback loginCallback;

  LoginForm({
    Key? key,
    required this.emailController,
    required this.passwordController,
    required this.loginCallback,
  }) : super(key: key);

  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize:
          MainAxisSize.min,
      children: [
        SizedBox(
          width: 398,
          height: 50,
          child: TextField(
            controller: emailController,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                vertical: 29,
                horizontal: 16,
              ),
              labelText: 'username',
              labelStyle: const TextStyle(
                color: Color.fromRGBO(240, 247, 245, 1),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18.0), 
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 1.5,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18.0),
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 1.5,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18.0),
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 1.5,
                ),
              ),
              filled: true,
              fillColor: const Color.fromRGBO(240, 247, 245,
                  0.1),
            ),
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 20), 
        SizedBox(
          width: 398, 
          height: 50, 
          child: Obx(
            () =>  TextField(
            controller: passwordController,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                vertical: 29,
                horizontal: 16,
              ),
              labelText: 'Password',
              labelStyle: const TextStyle(
                color: Color.fromRGBO(240, 247, 245, 1),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18.0),
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 1.5,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18.0),
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 1.5,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18.0),
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 1.5,
                ),
              ),
              filled: true,
              fillColor: const Color.fromRGBO(240, 247, 245, 0.1), 
              suffixIcon: Obx(() => IconButton(
                icon: Icon(
                  controller.eye.value
              ? Icons.visibility_off
              : Icons.visibility,
                  color: Colors.white,
                ),
                onPressed: () {
                  controller.eye.value ==true ? controller.eye.value =false :  controller.eye.value =true;
                },
              )),
            ),
            obscureText: controller.eye.value,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          ),

        ),
        const SizedBox(height: 40), 
        Obx(
          () => Container(
            width: 398,
            height: 50,
            decoration: BoxDecoration(
              color:
                  const Color.fromARGB(255, 240, 247, 245),
              borderRadius: BorderRadius.circular(18.0), 
            ),
            child: ElevatedButton(
              onPressed: loginCallback,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors
                    .transparent, 
                elevation: 0, 
              ),
              child: controller.loading.value == true
                  ? const CircularProgressIndicator()
                  : const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black, 
                        fontSize: 16, 
                      ),
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
