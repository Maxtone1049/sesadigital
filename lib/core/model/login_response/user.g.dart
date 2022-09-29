// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['_id'] as String?,
      username: json['username'] as String?,
      avatar: json['avatar'] as String?,
      isActive: json['is_active'] as bool?,
      isDeleted: json['is_deleted'] as bool?,
      isBlocked: json['is_blocked'] as bool?,
      role: json['role'] as String?,
      isFan: json['is_fan'] as bool?,
      birthday: json['birthday'] as String?,
      birthmonth: json['birthmonth'] as String?,
      birthyear: json['birthyear'] as String?,
      dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
      fullname: json['fullname'] as String?,
      basePrice: json['base_price'] as int?,
      email: json['email'] as String?,
      bio: json['bio'] as String?,
      resetToken: json['reset_token'] as String?,
      isAdminCreate: json['is_admin_create'] as bool?,
      creatorId: json['creator_id'],
      notifications: json['notifications'] == null
          ? null
          : Notifications.fromJson(
              json['notifications'] as Map<String, dynamic>),
      isSuperAccount: json['is_super_account'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
      lastLoginDate: json['last_login_date'] == null
          ? null
          : DateTime.parse(json['last_login_date'] as String),
      deviceToken: json['device_token'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      '_id': instance.id,
      'username': instance.username,
      'avatar': instance.avatar,
      'is_active': instance.isActive,
      'is_deleted': instance.isDeleted,
      'is_blocked': instance.isBlocked,
      'role': instance.role,
      'is_fan': instance.isFan,
      'birthday': instance.birthday,
      'birthmonth': instance.birthmonth,
      'birthyear': instance.birthyear,
      'dob': instance.dob?.toIso8601String(),
      'fullname': instance.fullname,
      'base_price': instance.basePrice,
      'email': instance.email,
      'bio': instance.bio,
      'reset_token': instance.resetToken,
      'is_admin_create': instance.isAdminCreate,
      'creator_id': instance.creatorId,
      'notifications': instance.notifications,
      'is_super_account': instance.isSuperAccount,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
      'last_login_date': instance.lastLoginDate?.toIso8601String(),
      'device_token': instance.deviceToken,
    };
