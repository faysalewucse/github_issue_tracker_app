import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';
import 'package:github_issue_tracker/controllers/auth_controller.dart';
import 'package:github_issue_tracker/helper/colors.dart';
import 'package:github_issue_tracker/helper/images.dart';
import 'package:github_issue_tracker/widgets/buttons/primary_button.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        color: PURE_BLACK,
        child: Center(
            child: PrimaryButton(
          icon: Image.asset(AppImages.githubLogo),
          label: "Login with Github",
          labelColor: BLACK,
          onTap: () {
            authController.loginWithGitHub();
          },
          color: WHITE,
        )),
      ),
    );
  }
}
