// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      isActive: json['is_active'] as bool?,
      jwtToken: json['jwt_token'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      subscribers: (json['subscribers'] as List<dynamic>?)
          ?.map((e) => Subscriber.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscriptions: json['subscriptions'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'is_active': instance.isActive,
      'jwt_token': instance.jwtToken,
      'user': instance.user,
      'subscribers': instance.subscribers,
      'subscriptions': instance.subscriptions,
    };
