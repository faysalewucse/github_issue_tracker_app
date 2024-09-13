import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_issue_tracker/controllers/screen_controller.dart';
import 'package:github_issue_tracker/widgets/navigation_bar/app_bottom_navigation_bar.dart';

class InitialScreen extends StatelessWidget {
  InitialScreen({super.key});

  final screenController = Get.find<ScreenController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => screenController.widgetOptions
            .elementAt(screenController.selectedIndex.value),
      ),
      bottomNavigationBar: Obx(
        () => SizedBox(
          height: 63,
          child: AppBottomNavbar(
              currentIndex: screenController.selectedIndex.value,
              onTap: (index) {
                screenController.onItemTapped(
                  index,
                );
              }),
        ),
      ),
    );
  }
}
