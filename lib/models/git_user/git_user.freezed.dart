// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'git_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GitUser _$GitUserFromJson(Map<String, dynamic> json) {
  return _GitUser.fromJson(json);
}

/// @nodoc
mixin _$GitUser {
  int? get id => throw _privateConstructorUsedError;
  String? get login => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  @JsonKey(name: 'public_repos')
  int? get publicRepos => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'public_gists')
  int? get publicGists => throw _privateConstructorUsedError;
  @JsonKey(name: 'followers_url')
  String? get followersUrl => throw _privateConstructorUsedError;

  /// Serializes this GitUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GitUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GitUserCopyWith<GitUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitUserCopyWith<$Res> {
  factory $GitUserCopyWith(GitUser value, $Res Function(GitUser) then) =
      _$GitUserCopyWithImpl<$Res, GitUser>;
  @useResult
  $Res call(
      {int? id,
      String? login,
      String? name,
      String? bio,
      @JsonKey(name: 'public_repos') int? publicRepos,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      @JsonKey(name: 'public_gists') int? publicGists,
      @JsonKey(name: 'followers_url') String? followersUrl});
}

/// @nodoc
class _$GitUserCopyWithImpl<$Res, $Val extends GitUser>
    implements $GitUserCopyWith<$Res> {
  _$GitUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GitUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? login = freezed,
    Object? name = freezed,
    Object? bio = freezed,
    Object? publicRepos = freezed,
    Object? avatarUrl = freezed,
    Object? publicGists = freezed,
    Object? followersUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      publicRepos: freezed == publicRepos
          ? _value.publicRepos
          : publicRepos // ignore: cast_nullable_to_non_nullable
              as int?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      publicGists: freezed == publicGists
          ? _value.publicGists
          : publicGists // ignore: cast_nullable_to_non_nullable
              as int?,
      followersUrl: freezed == followersUrl
          ? _value.followersUrl
          : followersUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GitUserImplCopyWith<$Res> implements $GitUserCopyWith<$Res> {
  factory _$$GitUserImplCopyWith(
          _$GitUserImpl value, $Res Function(_$GitUserImpl) then) =
      __$$GitUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? login,
      String? name,
      String? bio,
      @JsonKey(name: 'public_repos') int? publicRepos,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      @JsonKey(name: 'public_gists') int? publicGists,
      @JsonKey(name: 'followers_url') String? followersUrl});
}

/// @nodoc
class __$$GitUserImplCopyWithImpl<$Res>
    extends _$GitUserCopyWithImpl<$Res, _$GitUserImpl>
    implements _$$GitUserImplCopyWith<$Res> {
  __$$GitUserImplCopyWithImpl(
      _$GitUserImpl _value, $Res Function(_$GitUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of GitUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? login = freezed,
    Object? name = freezed,
    Object? bio = freezed,
    Object? publicRepos = freezed,
    Object? avatarUrl = freezed,
    Object? publicGists = freezed,
    Object? followersUrl = freezed,
  }) {
    return _then(_$GitUserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      publicRepos: freezed == publicRepos
          ? _value.publicRepos
          : publicRepos // ignore: cast_nullable_to_non_nullable
              as int?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      publicGists: freezed == publicGists
          ? _value.publicGists
          : publicGists // ignore: cast_nullable_to_non_nullable
              as int?,
      followersUrl: freezed == followersUrl
          ? _value.followersUrl
          : followersUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GitUserImpl implements _GitUser {
  const _$GitUserImpl(
      {this.id,
      this.login,
      this.name,
      this.bio,
      @JsonKey(name: 'public_repos') this.publicRepos,
      @JsonKey(name: 'avatar_url') this.avatarUrl,
      @JsonKey(name: 'public_gists') this.publicGists,
      @JsonKey(name: 'followers_url') this.followersUrl});

  factory _$GitUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitUserImplFromJson(json);

  @override
  final int? id;
  @override
  final String? login;
  @override
  final String? name;
  @override
  final String? bio;
  @override
  @JsonKey(name: 'public_repos')
  final int? publicRepos;
  @override
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;
  @override
  @JsonKey(name: 'public_gists')
  final int? publicGists;
  @override
  @JsonKey(name: 'followers_url')
  final String? followersUrl;

  @override
  String toString() {
    return 'GitUser(id: $id, login: $login, name: $name, bio: $bio, publicRepos: $publicRepos, avatarUrl: $avatarUrl, publicGists: $publicGists, followersUrl: $followersUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.publicRepos, publicRepos) ||
                other.publicRepos == publicRepos) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.publicGists, publicGists) ||
                other.publicGists == publicGists) &&
            (identical(other.followersUrl, followersUrl) ||
                other.followersUrl == followersUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, login, name, bio,
      publicRepos, avatarUrl, publicGists, followersUrl);

  /// Create a copy of GitUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GitUserImplCopyWith<_$GitUserImpl> get copyWith =>
      __$$GitUserImplCopyWithImpl<_$GitUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitUserImplToJson(
      this,
    );
  }
}

abstract class _GitUser implements GitUser {
  const factory _GitUser(
          {final int? id,
          final String? login,
          final String? name,
          final String? bio,
          @JsonKey(name: 'public_repos') final int? publicRepos,
          @JsonKey(name: 'avatar_url') final String? avatarUrl,
          @JsonKey(name: 'public_gists') final int? publicGists,
          @JsonKey(name: 'followers_url') final String? followersUrl}) =
      _$GitUserImpl;

  factory _GitUser.fromJson(Map<String, dynamic> json) = _$GitUserImpl.fromJson;

  @override
  int? get id;
  @override
  String? get login;
  @override
  String? get name;
  @override
  String? get bio;
  @override
  @JsonKey(name: 'public_repos')
  int? get publicRepos;
  @override
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl;
  @override
  @JsonKey(name: 'public_gists')
  int? get publicGists;
  @override
  @JsonKey(name: 'followers_url')
  String? get followersUrl;

  /// Create a copy of GitUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GitUserImplCopyWith<_$GitUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
