import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/utilities/typedef.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    int? id,
    String? username,
    String? email,
    String? firstName,
    String? lastName,
    String? gender,
    String? image,
    String? accessToken,
    String? refreshToken,
  }) = _User;

  factory User.fromJson(JsonMapping json) => _$UserFromJson(json);

  String get name => '$firstName $lastName';
}

@freezed
class UserListResponse with _$UserListResponse {
  const UserListResponse._();
  const factory UserListResponse({
    required List<User> users,
    required int total,
    required int skip,
    required int limit,
  }) = _UserListResponse;

  factory UserListResponse.fromJson(JsonMapping json) =>
      _$UserListResponseFromJson(json);
}
