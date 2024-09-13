import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_issue_tracker/controllers/issues_controller.dart';
import 'package:github_issue_tracker/helper/colors.dart';
import 'package:github_issue_tracker/models/issue/issue.dart';
import 'package:github_issue_tracker/widgets/cards/issue_card.dart';
import 'package:github_issue_tracker/widgets/loaders/custom_loader.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final issuesController = Get.find<IssuesController>();

  late List<Issue> issueList;

  void _initCall() async {
    issueList = await issuesController.getRepoIssues();
  }

  @override
  void initState() {
    super.initState();
    _initCall();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PURE_BLACK,
      body: Container(
        color: PURE_BLACK,
        child: Obx(() => issuesController.getRepoIssuesLoading.isTrue
            ? const Center(child: CustomLoader()) // Show loader when data is being fetched
            : issueList.isEmpty
            ? const Center(child: Text('No issues found'))
            : ListView.separated(
          separatorBuilder: (_, i) => Container(color: BORDER_COLOR_1, height: 1,),
          itemCount: issueList.length,
          itemBuilder: (context, index) {
            final issue = issueList[index];
            return IssueCard(issue: issue);
          },
        )),
      ),
    );
  }
}
