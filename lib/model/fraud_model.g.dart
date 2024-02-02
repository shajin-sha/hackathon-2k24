// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fraud_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FraudModelImpl _$$FraudModelImplFromJson(Map<String, dynamic> json) =>
    _$FraudModelImpl(
      type: json['type'] as String?,
      impact: (json['impact'] as num?)?.toDouble() ?? 0.1,
      title: json['title'] as String?,
      description: json['description'] as String?,
      affected: json['affected'] as int? ?? 0,
      inappropriateCount: json['inappropriateCount'] as int? ?? 0,
      firstReported: json['firstReported'] == null
          ? null
          : DateTime.parse(json['firstReported'] as String),
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$$FraudModelImplToJson(_$FraudModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'impact': instance.impact,
      'title': instance.title,
      'description': instance.description,
      'affected': instance.affected,
      'inappropriateCount': instance.inappropriateCount,
      'firstReported': instance.firstReported?.toIso8601String(),
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
    };
