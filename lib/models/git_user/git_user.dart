import 'package:freezed_annotation/freezed_annotation.dart';

part 'git_user.freezed.dart';
part 'git_user.g.dart';

@freezed
class GitUser with _$GitUser {
  const factory GitUser({
    int? id,
    String? login,
    String? name,
    String? bio,
    @JsonKey(name: 'public_repos') int? publicRepos,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    @JsonKey(name: 'public_gists') int? publicGists,
    @JsonKey(name: 'followers_url') String? followersUrl,
  }) = _GitUser;

  factory GitUser.fromJson(Map<String, dynamic> json) => _$GitUserFromJson(json);
}
