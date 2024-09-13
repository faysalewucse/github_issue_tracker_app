// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IssueImpl _$$IssueImplFromJson(Map<String, dynamic> json) => _$IssueImpl(
      title: json['title'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      number: (json['number'] as num).toInt(),
      createdAt: json['created_at'] as String,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$$IssueImplToJson(_$IssueImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'user': instance.user,
      'number': instance.number,
      'created_at': instance.createdAt,
      'body': instance.body,
    };
