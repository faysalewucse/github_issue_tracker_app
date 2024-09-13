import 'package:get/get.dart';
import 'package:github_issue_tracker/models/issue/issue.dart';
import 'package:github_issue_tracker/services/issue_service.dart';

class IssuesController extends GetxController {
  final getRepoIssuesLoading = false.obs;

  Future<List<Issue>> getRepoIssues() async {
    try {
      getRepoIssuesLoading(true);

      // Call the service to get the issues
      final response = await IssueService.getRepoIssues();

      // Convert the response into a list of Issue objects
      final List<Issue> issues = (response.data as List)
          .map((issueJson) => Issue.fromJson(issueJson))
          .toList();

      return issues;
    } catch (e) {
      print(e);
      return [];
    } finally {
      getRepoIssuesLoading(false);
    }
  }
}
