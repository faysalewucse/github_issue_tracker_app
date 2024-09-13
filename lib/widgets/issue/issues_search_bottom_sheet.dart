import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_issue_tracker/Helper/colors.dart';
import 'package:github_issue_tracker/controllers/issues_controller.dart';
import 'package:github_issue_tracker/utils/text_field_validators.dart';
import 'package:github_issue_tracker/widgets/buttons/primary_button.dart';
import 'package:github_issue_tracker/widgets/text_form_field/text_field_with_label.dart';

class IssuesSearchBottomSheet extends StatefulWidget {
  const IssuesSearchBottomSheet({super.key});

  @override
  State<IssuesSearchBottomSheet> createState() => _IssuesSearchBottomSheetState();
}

class _IssuesSearchBottomSheetState extends State<IssuesSearchBottomSheet> {
  TextEditingController userName = TextEditingController();
  TextEditingController repoName = TextEditingController();
  TextEditingController searchText = TextEditingController();
  TextEditingController searchTextExclude = TextEditingController();

  final issueController  = Get.find<IssuesController>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchText.text = issueController.searchTextInclude.value;
    searchTextExclude.text = issueController.searchTextExclude.value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CARD_COLOR,
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextFieldWithLabel(
              required: false,
              controller: searchText,
              label: "Search Text (Included)",
              hintText: "",
            ),
            TextFieldWithLabel(
              required: false,
              controller: searchTextExclude,
              label: "Search Text (Excluded)",
              hintText: "",
            ),
            TextFieldWithLabel(
              required: false,
              controller: userName,
              label: "GitHub User Name",
              hintText: "ex: faysalewucse",
            ),
            TextFieldWithLabel(
              required: false,
              controller: repoName,
              label: "GitHub Repository Name",
              hintText: "@ex: github_issue_tracker_app",
            ),
            PrimaryButton(label: "Search", onTap: searchIssues)
          ],
        ),
      ),
    );
  }

  void searchIssues () async {
    issueController.issuePage(1);
    issueController.searchTextInclude(searchText.text);
    issueController.searchTextExclude(searchTextExclude.text);
    Get.back();
    await issueController.getRepoIssues();
  }
}
