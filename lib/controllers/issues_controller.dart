import 'package:get/get.dart';
import 'package:github_issue_tracker/helper/constant.dart';
import 'package:github_issue_tracker/helper/constant.dart';
import 'package:github_issue_tracker/helper/constant.dart';
import 'package:github_issue_tracker/models/issue/issue.dart';
import 'package:github_issue_tracker/services/issue_service.dart';

class IssuesController extends GetxController {
  final getRepoIssuesLoading = false.obs;
  final getRepoIssuesErrorMessage = "".obs;
  final loadingMoreIssues = false.obs;
  final issues = <Issue>[].obs;
  final totalIssues = 0.obs;
  final issuePage = 1.obs;
  final searchTextInclude = "".obs;
  final searchTextExclude = "".obs;
  final repoUrl = defaultRepoUrl.obs;

  Future<void> getRepoIssues() async {
    try {
      int currentPage = issuePage.value;

      if (currentPage == 1) {
        getRepoIssuesLoading(true);
      } else {
        loadingMoreIssues(true);
      }

      if(repoUrl.isEmpty) repoUrl(defaultRepoUrl);

      final response = await IssueService.getRepoIssues(page: currentPage, repoUrl: repoUrl.value, titleIncludes: searchTextInclude.value);

      final List<Issue> responseIssues = (response.data["items"] as List)
          .map((issueJson) => Issue.fromJson(issueJson))
          .toList();

      if((searchTextInclude.isNotEmpty || searchTextExclude.isNotEmpty || repoUrl.value != defaultRepoUrl) && issuePage.value == 1) {
        issues.clear();
      }

      totalIssues(response.data["total_count"]);

      issues.addAll(responseIssues);

      if(searchTextExclude.isNotEmpty) filterIssues();

    } catch (e) {
      getRepoIssuesErrorMessage(e.toString());
    } finally {
      getRepoIssuesLoading(false);
      loadingMoreIssues(false);
    }
  }

  void filterIssues() {
    var filteredIssues = issues.toList();

    if (searchTextExclude.isNotEmpty) {
      filteredIssues = filteredIssues.where((issue) =>
      !issue.title.toLowerCase().contains(searchTextExclude.value.toLowerCase())
      ).toList();
    }

    issues(filteredIssues);
  }
}
