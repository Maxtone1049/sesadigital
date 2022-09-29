import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscriber.freezed.dart';
part 'subscriber.g.dart';

@freezed
class Subscriber with _$Subscriber {
  factory Subscriber({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'celebrity_id') String? celebrityId,
    @JsonKey(name: 'subscriber_id') String? subscriberId,
    @JsonKey(name: 'next_subscription_date') DateTime? nextSubscriptionDate,
    @JsonKey(name: 'is_gifted') bool? isGifted,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: '__v') int? v,
  }) = _Subscriber;

  factory Subscriber.fromJson(Map<String, dynamic> json) =>
      _$SubscriberFromJson(json);
}
