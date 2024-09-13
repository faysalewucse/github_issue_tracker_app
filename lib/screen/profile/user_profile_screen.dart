import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_issue_tracker/controllers/auth_controller.dart';
import 'package:github_issue_tracker/screen/auth/sign_in_screen/sign_in_screen.dart';
import 'package:github_issue_tracker/screen/profile/user_profile.dart';

class UserProfileScreen extends StatelessWidget {
  UserProfileScreen({super.key});

  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(()=> authController.isAuthenticated.isTrue ? UserProfile() : SignInScreen()),
    );
  }
}
