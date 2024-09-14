import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_issue_tracker/Helper/colors.dart';
import 'package:github_issue_tracker/controllers/auth_controller.dart';
import 'package:github_issue_tracker/utils/sizedbox_extension.dart';
import 'package:github_issue_tracker/widgets/buttons/primary_button.dart';

class UserProfile extends StatelessWidget {
  UserProfile({super.key});

  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CARD_COLOR,
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 100, // Adjust the size as needed
              backgroundImage:
                  NetworkImage(authController.gitUser.value.avatarUrl ?? ""),
              backgroundColor:
                  Colors.transparent, // Optional: Adjust background color
            ),
            24.kH,
            Text(
              authController.gitUser.value.name ?? "",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            8.kH,
            Text(
              "@${authController.gitUser.value.login}" ?? "",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            8.kH,
            Text(
              "Bio: ${authController.gitUser.value.bio ?? "N/A"}" ?? "",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            8.kH,
            Text(
              "Public Repos: ${authController.gitUser.value.publicRepos ?? "0"}" ?? "",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            8.kH,
            Text(
              "Public Gists: ${authController.gitUser.value.publicGists ?? "0"}" ?? "",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const Expanded(child: SizedBox()),
            PrimaryButton(label: "Log Out", onTap: (){
              authController.logout();
            })
          ],
        ),
      ),
    );
  }
}
