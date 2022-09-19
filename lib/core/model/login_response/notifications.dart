import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications.freezed.dart';
part 'notifications.g.dart';

@freezed
class Notifications with _$Notifications {
  factory Notifications({
    @JsonKey(name: 'email_new_content') String? emailNewContent,
    @JsonKey(name: 'email_new_stream') String? emailNewStream,
    @JsonKey(name: 'email_new_subscriber') String? emailNewSubscriber,
    @JsonKey(name: 'email_new_comment') String? emailNewComment,
    @JsonKey(name: 'email_new_mention') String? emailNewMention,
    @JsonKey(name: 'app_new_subscriber') String? appNewSubscriber,
    @JsonKey(name: 'app_new_content') String? appNewContent,
    @JsonKey(name: 'app_new_stream') String? appNewStream,
    @JsonKey(name: 'app_new_mention') String? appNewMention,
    @JsonKey(name: 'app_new_comment') String? appNewComment,
  }) = _Notifications;

  factory Notifications.fromJson(Map<String, dynamic> json) =>
      _$NotificationsFromJson(json);
}
