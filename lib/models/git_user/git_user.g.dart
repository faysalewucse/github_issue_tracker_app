// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'git_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GitUserImpl _$$GitUserImplFromJson(Map<String, dynamic> json) =>
    _$GitUserImpl(
      id: (json['id'] as num?)?.toInt(),
      login: json['login'] as String?,
      name: json['name'] as String?,
      bio: json['bio'] as String?,
      publicRepos: (json['public_repos'] as num?)?.toInt(),
      avatarUrl: json['avatar_url'] as String?,
      publicGists: (json['public_gists'] as num?)?.toInt(),
      followersUrl: json['followers_url'] as String?,
    );

Map<String, dynamic> _$$GitUserImplToJson(_$GitUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'name': instance.name,
      'bio': instance.bio,
      'public_repos': instance.publicRepos,
      'avatar_url': instance.avatarUrl,
      'public_gists': instance.publicGists,
      'followers_url': instance.followersUrl,
    };
