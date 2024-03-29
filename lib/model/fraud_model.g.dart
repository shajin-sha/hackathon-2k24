// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fraud_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FraudModelImpl _$$FraudModelImplFromJson(Map<String, dynamic> json) =>
    _$FraudModelImpl(
      id: json['_id'] as String?,
      type: json['type'] as String? ?? "SMS",
      impact: (json['impact'] as num?)?.toDouble() ?? 0.1,
      title: json['title'] as String?,
      description: json['description'] as String?,
      affected: json['affectedCount'] as int? ?? 0,
      inappropriateCount: json['inappropriateCount'] as int? ?? 0,
      firstReported: json['firstReported'] == null
          ? null
          : DateTime.parse(json['firstReported'] as String),
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
      userMobile: json['userMobile'] as String?,
    );

Map<String, dynamic> _$$FraudModelImplToJson(_$FraudModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'type': instance.type,
      'impact': instance.impact,
      'title': instance.title,
      'description': instance.description,
      'affectedCount': instance.affected,
      'inappropriateCount': instance.inappropriateCount,
      'firstReported': instance.firstReported?.toIso8601String(),
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
      'userMobile': instance.userMobile,
    };
