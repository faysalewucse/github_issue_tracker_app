import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_issue_tracker/screen/home/home_screen.dart';
import 'package:github_issue_tracker/screen/profile/user_profile_screen.dart';

class ScreenController extends GetxController {
  RxInt selectedIndex = 0.obs;
  late List<Widget> widgetOptions;

  ScreenController() {
    widgetOptions = <Widget>[
      const HomeScreen(),
      UserProfileScreen(),
    ];
  }

  void onItemTapped(int index) {
    selectedIndex(index);
  }
}
