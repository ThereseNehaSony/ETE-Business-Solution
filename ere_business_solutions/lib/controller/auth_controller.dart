import 'package:ere_business_solutions/model/user_model.dart';
import 'package:ere_business_solutions/view/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  RxBool loading = false.obs;
  RxBool eye = true.obs;
  Future<void> loginUser() async {
    loading.value = true;
    String baseUrl = "https://musicapp.jissanto.com/api";
    try {
      final response = await http.post(
        Uri.parse("$baseUrl/login"),
        body: jsonEncode({
          "username": usernameController.text,
          "password": passwordController.text,
        }),
        headers: {"Content-Type": "application/json"},
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        LoginResponse loginResponse = LoginResponse.fromJson(data);

        storeAuthToken(loginResponse.token);
        usernameController.clear();
        passwordController.clear();
        loading.value = false;

        Get.offAll(() => SuccessPage(loginResponse: loginResponse));
      } else {
        loading.value = false;

        Get.snackbar('Login Failed', 'Incorrect username or password',
            snackPosition: SnackPosition.BOTTOM, colorText: Colors.white);
      }
    } catch (e) {
      loading.value = false;
      Get.snackbar('Error', 'An error occurred',
          snackPosition: SnackPosition.BOTTOM, colorText: Colors.white);
    }
  }

  storeAuthToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('auth_token', token);

  }
}
