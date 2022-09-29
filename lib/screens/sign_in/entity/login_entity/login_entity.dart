import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_entity.freezed.dart';
part 'login_entity.g.dart';

@Freezed(toJson: true, copyWith: false, fromJson: false)
class LoginEntity with _$LoginEntity {
  factory LoginEntity({
    String? userdata,
    String? password,
    String? deviceToken,
  }) = _LoginEntity;
}
