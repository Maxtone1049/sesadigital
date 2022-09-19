import 'package:freezed_annotation/freezed_annotation.dart';

import 'subscriber.dart';
import 'user.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'jwt_token') String? jwtToken,
    User? user,
    List<Subscriber>? subscribers,
    List<dynamic>? subscriptions,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
