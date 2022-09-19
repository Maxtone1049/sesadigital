// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEntity {
  String? get userdata => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get deviceToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_LoginEntity implements _LoginEntity {
  _$_LoginEntity({this.userdata, this.password, this.deviceToken});

  @override
  final String? userdata;
  @override
  final String? password;
  @override
  final String? deviceToken;

  @override
  String toString() {
    return 'LoginEntity(userdata: $userdata, password: $password, device_token: $deviceToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginEntity &&
            const DeepCollectionEquality().equals(other.userdata, userdata) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.deviceToken, deviceToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userdata),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(deviceToken));

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginEntityToJson(
      this,
    );
  }
}

abstract class _LoginEntity implements LoginEntity {
  factory _LoginEntity(
      {final String? userdata,
      final String? password,
      final String? deviceToken}) = _$_LoginEntity;

  @override
  String? get userdata;
  @override
  String? get password;
  @override
  String? get deviceToken;
}
