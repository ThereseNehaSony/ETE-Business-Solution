
import 'package:ere_business_solutions/controller/auth_controller.dart';
import 'package:ere_business_solutions/model/user_model.dart';
import 'package:ere_business_solutions/view/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SuccessCard extends StatelessWidget {
  final LoginResponse loginResponse;
  final LoginController controller;

  const SuccessCard({Key? key, required this.loginResponse, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.check_circle,
              size: 64,
              color: Colors.green,
            ),
            const SizedBox(height: 16),
            _buildWelcomeText(),
            const SizedBox(height: 8),
            _buildClassModeText(),
            const SizedBox(height: 8),
            _buildStatusText(),
            const SizedBox(height: 8),
            _buildApprovalText(),
            const SizedBox(height: 24),
            _buildLogoutButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildWelcomeText() {
    return Text(
      'Welcome, ${loginResponse.name}!',
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  Widget _buildClassModeText() {
    return Text(
      'Class Mode: ${loginResponse.classMode}',
      style: const TextStyle(fontSize: 16),
    );
  }

  Widget _buildStatusText() {
    return Text(
      'Status: ${loginResponse.status}',
      style: const TextStyle(fontSize: 16),
    );
  }

  Widget _buildApprovalText() {
    return Text(
      'Approval: ${loginResponse.approval}',
      style: const TextStyle(fontSize: 16),
    );
  }

  Widget _buildLogoutButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        controller.storeAuthToken("");
        Get.off(const LoginPage()); 
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blueAccent,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Text('Log out'),
    );
  }
}
