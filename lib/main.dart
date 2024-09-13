import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:github_issue_tracker/bindings.dart';
import 'package:github_issue_tracker/controllers/keeper_controller.dart';
import 'package:github_issue_tracker/controllers/storage_controller.dart';
import 'package:github_issue_tracker/firebase_options.dart';
import 'package:github_issue_tracker/helper/constant.dart';
import 'package:github_issue_tracker/helper/theme.dart';
import 'package:github_issue_tracker/router/Routers.dart';
import 'package:github_issue_tracker/router/routes.dart';
import 'package:toastification/toastification.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;

    return ToastificationWrapper(
      child: GetMaterialApp(
        title: 'GitHub Issue Tracker',
        debugShowCheckedModeBanner: false,
        theme: MyTheme.lightTheme,
        initialRoute: AppRoutes.initialScreen,
        getPages: routePages,
        locale: const Locale('en', 'US'),
        fallbackLocale: const Locale('en', 'US'),
        initialBinding: MyBindings(),
      ),
    );
  }
}
