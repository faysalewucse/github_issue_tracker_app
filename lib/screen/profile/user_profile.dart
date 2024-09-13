import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_issue_tracker/controllers/auth_controller.dart';

class UserProfile extends StatelessWidget {
  UserProfile({super.key});

  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Image.network("src"),
        Text("Name"),
        Text("Name"),
        Text("Name"),
        Text("Name"),
        Text("Name"),
        Text("Name"),
      ],
    ));
  }
}
