// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Notifications _$$_NotificationsFromJson(Map<String, dynamic> json) =>
    _$_Notifications(
      emailNewContent: json['email_new_content'] as String?,
      emailNewStream: json['email_new_stream'] as String?,
      emailNewSubscriber: json['email_new_subscriber'] as String?,
      emailNewComment: json['email_new_comment'] as String?,
      emailNewMention: json['email_new_mention'] as String?,
      appNewSubscriber: json['app_new_subscriber'] as String?,
      appNewContent: json['app_new_content'] as String?,
      appNewStream: json['app_new_stream'] as String?,
      appNewMention: json['app_new_mention'] as String?,
      appNewComment: json['app_new_comment'] as String?,
    );

Map<String, dynamic> _$$_NotificationsToJson(_$_Notifications instance) =>
    <String, dynamic>{
      'email_new_content': instance.emailNewContent,
      'email_new_stream': instance.emailNewStream,
      'email_new_subscriber': instance.emailNewSubscriber,
      'email_new_comment': instance.emailNewComment,
      'email_new_mention': instance.emailNewMention,
      'app_new_subscriber': instance.appNewSubscriber,
      'app_new_content': instance.appNewContent,
      'app_new_stream': instance.appNewStream,
      'app_new_mention': instance.appNewMention,
      'app_new_comment': instance.appNewComment,
    };
