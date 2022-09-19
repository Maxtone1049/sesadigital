// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_deleted')
  bool? get isDeleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_blocked')
  bool? get isBlocked => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_fan')
  bool? get isFan => throw _privateConstructorUsedError;
  String? get birthday => throw _privateConstructorUsedError;
  String? get birthmonth => throw _privateConstructorUsedError;
  String? get birthyear => throw _privateConstructorUsedError;
  DateTime? get dob => throw _privateConstructorUsedError;
  String? get fullname => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_price')
  int? get basePrice => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  @JsonKey(name: 'reset_token')
  String? get resetToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_admin_create')
  bool? get isAdminCreate => throw _privateConstructorUsedError;
  @JsonKey(name: 'creator_id')
  dynamic get creatorId => throw _privateConstructorUsedError;
  Notifications? get notifications => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_super_account')
  bool? get isSuperAccount => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: '__v')
  int? get v => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_login_date')
  DateTime? get lastLoginDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_token')
  String? get deviceToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String? id,
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
      @JsonKey(name: 'device_token') String? deviceToken});

  $NotificationsCopyWith<$Res>? get notifications;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? avatar = freezed,
    Object? isActive = freezed,
    Object? isDeleted = freezed,
    Object? isBlocked = freezed,
    Object? role = freezed,
    Object? isFan = freezed,
    Object? birthday = freezed,
    Object? birthmonth = freezed,
    Object? birthyear = freezed,
    Object? dob = freezed,
    Object? fullname = freezed,
    Object? basePrice = freezed,
    Object? email = freezed,
    Object? bio = freezed,
    Object? resetToken = freezed,
    Object? isAdminCreate = freezed,
    Object? creatorId = freezed,
    Object? notifications = freezed,
    Object? isSuperAccount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? lastLoginDate = freezed,
    Object? deviceToken = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeleted: isDeleted == freezed
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBlocked: isBlocked == freezed
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      isFan: isFan == freezed
          ? _value.isFan
          : isFan // ignore: cast_nullable_to_non_nullable
              as bool?,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      birthmonth: birthmonth == freezed
          ? _value.birthmonth
          : birthmonth // ignore: cast_nullable_to_non_nullable
              as String?,
      birthyear: birthyear == freezed
          ? _value.birthyear
          : birthyear // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      basePrice: basePrice == freezed
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      resetToken: resetToken == freezed
          ? _value.resetToken
          : resetToken // ignore: cast_nullable_to_non_nullable
              as String?,
      isAdminCreate: isAdminCreate == freezed
          ? _value.isAdminCreate
          : isAdminCreate // ignore: cast_nullable_to_non_nullable
              as bool?,
      creatorId: creatorId == freezed
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      notifications: notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as Notifications?,
      isSuperAccount: isSuperAccount == freezed
          ? _value.isSuperAccount
          : isSuperAccount // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: v == freezed
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      lastLoginDate: lastLoginDate == freezed
          ? _value.lastLoginDate
          : lastLoginDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deviceToken: deviceToken == freezed
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $NotificationsCopyWith<$Res>? get notifications {
    if (_value.notifications == null) {
      return null;
    }

    return $NotificationsCopyWith<$Res>(_value.notifications!, (value) {
      return _then(_value.copyWith(notifications: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String? id,
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
      @JsonKey(name: 'device_token') String? deviceToken});

  @override
  $NotificationsCopyWith<$Res>? get notifications;
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, (v) => _then(v as _$_User));

  @override
  _$_User get _value => super._value as _$_User;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? avatar = freezed,
    Object? isActive = freezed,
    Object? isDeleted = freezed,
    Object? isBlocked = freezed,
    Object? role = freezed,
    Object? isFan = freezed,
    Object? birthday = freezed,
    Object? birthmonth = freezed,
    Object? birthyear = freezed,
    Object? dob = freezed,
    Object? fullname = freezed,
    Object? basePrice = freezed,
    Object? email = freezed,
    Object? bio = freezed,
    Object? resetToken = freezed,
    Object? isAdminCreate = freezed,
    Object? creatorId = freezed,
    Object? notifications = freezed,
    Object? isSuperAccount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? lastLoginDate = freezed,
    Object? deviceToken = freezed,
  }) {
    return _then(_$_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeleted: isDeleted == freezed
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBlocked: isBlocked == freezed
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      isFan: isFan == freezed
          ? _value.isFan
          : isFan // ignore: cast_nullable_to_non_nullable
              as bool?,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      birthmonth: birthmonth == freezed
          ? _value.birthmonth
          : birthmonth // ignore: cast_nullable_to_non_nullable
              as String?,
      birthyear: birthyear == freezed
          ? _value.birthyear
          : birthyear // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      basePrice: basePrice == freezed
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      resetToken: resetToken == freezed
          ? _value.resetToken
          : resetToken // ignore: cast_nullable_to_non_nullable
              as String?,
      isAdminCreate: isAdminCreate == freezed
          ? _value.isAdminCreate
          : isAdminCreate // ignore: cast_nullable_to_non_nullable
              as bool?,
      creatorId: creatorId == freezed
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      notifications: notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as Notifications?,
      isSuperAccount: isSuperAccount == freezed
          ? _value.isSuperAccount
          : isSuperAccount // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: v == freezed
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      lastLoginDate: lastLoginDate == freezed
          ? _value.lastLoginDate
          : lastLoginDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deviceToken: deviceToken == freezed
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  _$_User(
      {@JsonKey(name: '_id') this.id,
      this.username,
      this.avatar,
      @JsonKey(name: 'is_active') this.isActive,
      @JsonKey(name: 'is_deleted') this.isDeleted,
      @JsonKey(name: 'is_blocked') this.isBlocked,
      this.role,
      @JsonKey(name: 'is_fan') this.isFan,
      this.birthday,
      this.birthmonth,
      this.birthyear,
      this.dob,
      this.fullname,
      @JsonKey(name: 'base_price') this.basePrice,
      this.email,
      this.bio,
      @JsonKey(name: 'reset_token') this.resetToken,
      @JsonKey(name: 'is_admin_create') this.isAdminCreate,
      @JsonKey(name: 'creator_id') this.creatorId,
      this.notifications,
      @JsonKey(name: 'is_super_account') this.isSuperAccount,
      this.createdAt,
      this.updatedAt,
      @JsonKey(name: '__v') this.v,
      @JsonKey(name: 'last_login_date') this.lastLoginDate,
      @JsonKey(name: 'device_token') this.deviceToken});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? username;
  @override
  final String? avatar;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @override
  @JsonKey(name: 'is_deleted')
  final bool? isDeleted;
  @override
  @JsonKey(name: 'is_blocked')
  final bool? isBlocked;
  @override
  final String? role;
  @override
  @JsonKey(name: 'is_fan')
  final bool? isFan;
  @override
  final String? birthday;
  @override
  final String? birthmonth;
  @override
  final String? birthyear;
  @override
  final DateTime? dob;
  @override
  final String? fullname;
  @override
  @JsonKey(name: 'base_price')
  final int? basePrice;
  @override
  final String? email;
  @override
  final String? bio;
  @override
  @JsonKey(name: 'reset_token')
  final String? resetToken;
  @override
  @JsonKey(name: 'is_admin_create')
  final bool? isAdminCreate;
  @override
  @JsonKey(name: 'creator_id')
  final dynamic creatorId;
  @override
  final Notifications? notifications;
  @override
  @JsonKey(name: 'is_super_account')
  final bool? isSuperAccount;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  @JsonKey(name: '__v')
  final int? v;
  @override
  @JsonKey(name: 'last_login_date')
  final DateTime? lastLoginDate;
  @override
  @JsonKey(name: 'device_token')
  final String? deviceToken;

  @override
  String toString() {
    return 'User(id: $id, username: $username, avatar: $avatar, isActive: $isActive, isDeleted: $isDeleted, isBlocked: $isBlocked, role: $role, isFan: $isFan, birthday: $birthday, birthmonth: $birthmonth, birthyear: $birthyear, dob: $dob, fullname: $fullname, basePrice: $basePrice, email: $email, bio: $bio, resetToken: $resetToken, isAdminCreate: $isAdminCreate, creatorId: $creatorId, notifications: $notifications, isSuperAccount: $isSuperAccount, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, lastLoginDate: $lastLoginDate, deviceToken: $deviceToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.isActive, isActive) &&
            const DeepCollectionEquality().equals(other.isDeleted, isDeleted) &&
            const DeepCollectionEquality().equals(other.isBlocked, isBlocked) &&
            const DeepCollectionEquality().equals(other.role, role) &&
            const DeepCollectionEquality().equals(other.isFan, isFan) &&
            const DeepCollectionEquality().equals(other.birthday, birthday) &&
            const DeepCollectionEquality()
                .equals(other.birthmonth, birthmonth) &&
            const DeepCollectionEquality().equals(other.birthyear, birthyear) &&
            const DeepCollectionEquality().equals(other.dob, dob) &&
            const DeepCollectionEquality().equals(other.fullname, fullname) &&
            const DeepCollectionEquality().equals(other.basePrice, basePrice) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.bio, bio) &&
            const DeepCollectionEquality()
                .equals(other.resetToken, resetToken) &&
            const DeepCollectionEquality()
                .equals(other.isAdminCreate, isAdminCreate) &&
            const DeepCollectionEquality().equals(other.creatorId, creatorId) &&
            const DeepCollectionEquality()
                .equals(other.notifications, notifications) &&
            const DeepCollectionEquality()
                .equals(other.isSuperAccount, isSuperAccount) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.v, v) &&
            const DeepCollectionEquality()
                .equals(other.lastLoginDate, lastLoginDate) &&
            const DeepCollectionEquality()
                .equals(other.deviceToken, deviceToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(username),
        const DeepCollectionEquality().hash(avatar),
        const DeepCollectionEquality().hash(isActive),
        const DeepCollectionEquality().hash(isDeleted),
        const DeepCollectionEquality().hash(isBlocked),
        const DeepCollectionEquality().hash(role),
        const DeepCollectionEquality().hash(isFan),
        const DeepCollectionEquality().hash(birthday),
        const DeepCollectionEquality().hash(birthmonth),
        const DeepCollectionEquality().hash(birthyear),
        const DeepCollectionEquality().hash(dob),
        const DeepCollectionEquality().hash(fullname),
        const DeepCollectionEquality().hash(basePrice),
        const DeepCollectionEquality().hash(email),
        const DeepCollectionEquality().hash(bio),
        const DeepCollectionEquality().hash(resetToken),
        const DeepCollectionEquality().hash(isAdminCreate),
        const DeepCollectionEquality().hash(creatorId),
        const DeepCollectionEquality().hash(notifications),
        const DeepCollectionEquality().hash(isSuperAccount),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(updatedAt),
        const DeepCollectionEquality().hash(v),
        const DeepCollectionEquality().hash(lastLoginDate),
        const DeepCollectionEquality().hash(deviceToken)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {@JsonKey(name: '_id') final String? id,
      final String? username,
      final String? avatar,
      @JsonKey(name: 'is_active') final bool? isActive,
      @JsonKey(name: 'is_deleted') final bool? isDeleted,
      @JsonKey(name: 'is_blocked') final bool? isBlocked,
      final String? role,
      @JsonKey(name: 'is_fan') final bool? isFan,
      final String? birthday,
      final String? birthmonth,
      final String? birthyear,
      final DateTime? dob,
      final String? fullname,
      @JsonKey(name: 'base_price') final int? basePrice,
      final String? email,
      final String? bio,
      @JsonKey(name: 'reset_token') final String? resetToken,
      @JsonKey(name: 'is_admin_create') final bool? isAdminCreate,
      @JsonKey(name: 'creator_id') final dynamic creatorId,
      final Notifications? notifications,
      @JsonKey(name: 'is_super_account') final bool? isSuperAccount,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      @JsonKey(name: '__v') final int? v,
      @JsonKey(name: 'last_login_date') final DateTime? lastLoginDate,
      @JsonKey(name: 'device_token') final String? deviceToken}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get username;
  @override
  String? get avatar;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;
  @override
  @JsonKey(name: 'is_deleted')
  bool? get isDeleted;
  @override
  @JsonKey(name: 'is_blocked')
  bool? get isBlocked;
  @override
  String? get role;
  @override
  @JsonKey(name: 'is_fan')
  bool? get isFan;
  @override
  String? get birthday;
  @override
  String? get birthmonth;
  @override
  String? get birthyear;
  @override
  DateTime? get dob;
  @override
  String? get fullname;
  @override
  @JsonKey(name: 'base_price')
  int? get basePrice;
  @override
  String? get email;
  @override
  String? get bio;
  @override
  @JsonKey(name: 'reset_token')
  String? get resetToken;
  @override
  @JsonKey(name: 'is_admin_create')
  bool? get isAdminCreate;
  @override
  @JsonKey(name: 'creator_id')
  dynamic get creatorId;
  @override
  Notifications? get notifications;
  @override
  @JsonKey(name: 'is_super_account')
  bool? get isSuperAccount;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(name: '__v')
  int? get v;
  @override
  @JsonKey(name: 'last_login_date')
  DateTime? get lastLoginDate;
  @override
  @JsonKey(name: 'device_token')
  String? get deviceToken;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
