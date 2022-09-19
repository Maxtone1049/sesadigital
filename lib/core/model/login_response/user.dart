import 'package:freezed_annotation/freezed_annotation.dart';

import 'notifications.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    @JsonKey(name: '_id') String? id,
    String? username,
    String? avatar,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'is_deleted') bool? isDeleted,
    @JsonKey(name: 'is_blocked') bool? isBlocked,
    String? role,
    @JsonKey(name: 'is_fan') bool? isFan,
    String? birthday,
    String? birthmonth,
    String? birthyear,
    DateTime? dob,
    String? fullname,
    @JsonKey(name: 'base_price') int? basePrice,
    String? email,
    String? bio,
    @JsonKey(name: 'reset_token') String? resetToken,
    @JsonKey(name: 'is_admin_create') bool? isAdminCreate,
    @JsonKey(name: 'creator_id') dynamic creatorId,
    Notifications? notifications,
    @JsonKey(name: 'is_super_account') bool? isSuperAccount,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: '__v') int? v,
    @JsonKey(name: 'last_login_date') DateTime? lastLoginDate,
    @JsonKey(name: 'device_token') String? deviceToken,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
