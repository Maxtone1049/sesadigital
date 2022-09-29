// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscriber.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Subscriber _$$_SubscriberFromJson(Map<String, dynamic> json) =>
    _$_Subscriber(
      id: json['_id'] as String?,
      celebrityId: json['celebrity_id'] as String?,
      subscriberId: json['subscriber_id'] as String?,
      nextSubscriptionDate: json['next_subscription_date'] == null
          ? null
          : DateTime.parse(json['next_subscription_date'] as String),
      isGifted: json['is_gifted'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$$_SubscriberToJson(_$_Subscriber instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'celebrity_id': instance.celebrityId,
      'subscriber_id': instance.subscriberId,
      'next_subscription_date':
          instance.nextSubscriptionDate?.toIso8601String(),
      'is_gifted': instance.isGifted,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };
