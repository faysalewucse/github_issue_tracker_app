import 'package:get/get.dart';
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

  Future<void> getRepoIssues() async {
    try {
      int currentPage = issuePage.value;

      if (currentPage == 1) {
        getRepoIssuesLoading(true);
      } else {
        loadingMoreIssues(true);
      }

      final response = await IssueService.getRepoIssues(page: currentPage);

      final List<Issue> responseIssues = (response.data as List)
          .map((issueJson) => Issue.fromJson(issueJson))
          .toList();

      if (currentPage == 1) {
        totalIssues(responseIssues.first.number);
        issues.clear();
      }

      issues.addAll(responseIssues);
      filterIssues();

    } catch (e) {
      getRepoIssuesErrorMessage(e.toString());
    } finally {
      getRepoIssuesLoading(false);
      loadingMoreIssues(false);
    }
  }

  void filterIssues() {
    var filteredIssues = issues.toList();
    if (searchTextInclude.isNotEmpty) {
      filteredIssues = filteredIssues.where((issue) =>
          issue.title.toLowerCase().contains(searchTextInclude.value.toLowerCase())
      ).toList();
    }

    if (searchTextExclude.isNotEmpty) {
      filteredIssues = filteredIssues.where((issue) =>
      !issue.title.toLowerCase().contains(searchTextExclude.value.toLowerCase())
      ).toList();
    }

    issues(filteredIssues);
  }

  void updateSearchFilters({String? include, String? exclude}) {
    if (include != null) searchTextInclude(include);
    if (exclude != null) searchTextExclude(exclude);
    filterIssues();
  }
}
