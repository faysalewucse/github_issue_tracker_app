import 'package:get/get.dart';
import 'package:github_issue_tracker/controllers/auth_controller.dart';
import 'package:github_issue_tracker/controllers/keeper_controller.dart';
import 'package:github_issue_tracker/controllers/network_controller.dart';
import 'package:github_issue_tracker/controllers/screen_controller.dart';
import 'package:github_issue_tracker/controllers/storage_controller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(NetworkController());
    Get.put(AuthController());
    Get.put(ScreenController());
    Get.put(StorageController());
    Get.put(KeeperController());
  }
}
