import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_issue_tracker/models/user/user.dart';
part 'issue.freezed.dart';
part 'issue.g.dart';

@freezed
class Issue with _$Issue {
  const factory Issue({
    required String title,
    required User user, // Reference the User class from user.dart
    @JsonKey(name: 'created_at') required String createdAt, // Map the JSON field
    required String body,
  }) = _Issue;

  factory Issue.fromJson(Map<String, dynamic> json) => _$IssueFromJson(json);
}
