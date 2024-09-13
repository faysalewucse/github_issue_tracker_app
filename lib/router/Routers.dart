import 'package:get/get.dart';
import 'package:github_issue_tracker/models/issue/issue.dart';
import 'package:github_issue_tracker/router/routes.dart';
import 'package:github_issue_tracker/screen/auth/sign_in_screen/sign_in_screen.dart';
import 'package:github_issue_tracker/screen/home/home_screen.dart';
import 'package:github_issue_tracker/screen/initial_screen.dart';
import 'package:github_issue_tracker/screen/issue/issue_details.dart';


final List<GetPage<dynamic>> routePages = [
  GetPage(name: AppRoutes.initialScreen, page: () => InitialScreen(), children: [
    GetPage(
      name: AppRoutes.homeScreen,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: AppRoutes.signInScreen,
      page: () => SignInScreen(),
    ),
    GetPage(
      name: AppRoutes.issueDetails,
      page: (){
        Issue issue = Get.arguments as Issue;
        return IssueDetails(issue: issue);
      },
    ),
  ])
];
