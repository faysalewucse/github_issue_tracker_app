import 'package:dio/dio.dart';
import 'package:github_issue_tracker/api/api_urls.dart';
import 'package:github_issue_tracker/api/config.dart';

class IssueService {
  // Method to search for issues by title
  static Future<Response> getRepoIssues({
    required String repoUrl,
    String? titleIncludes,
    int page = 1,
  }) async {

    if(repoUrl.isEmpty) repoUrl = "flutter/flutter";

    String query = 'repo:$repoUrl';

    if (titleIncludes != null) {
      query += ' in:title $titleIncludes';
    }

    // Make the API call to the search endpoint
    return await Api().dio.get(
      ApiUrl.ISSUE_SEARCHING_API_URL,
      queryParameters: {
        "q": query,
        "page": page,
      },
    );
  }
}
