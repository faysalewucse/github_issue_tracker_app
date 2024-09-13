import 'package:dio/dio.dart';
import 'package:github_issue_tracker/api/api_urls.dart';
import 'package:github_issue_tracker/api/config.dart';

class IssueService{
  static Future<Response> getRepoIssues() async{
    return await Api().dio.get(ApiUrl.ISSUE_FETCHING_API_URL);
  }
}