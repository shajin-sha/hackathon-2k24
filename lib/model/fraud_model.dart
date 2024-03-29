// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'fraud_model.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'fraud_model.g.dart';

@freezed
class FraudModel with _$FraudModel {
  @JsonSerializable(explicitToJson: true)
  const factory FraudModel({
    @JsonKey(name: "_id") String? id,
    @Default("SMS") String type,
    @Default(0.1) double impact,
    String? title,
    String? description,
    @JsonKey(name: "affectedCount") @Default(0) int affected,
    @JsonKey(name: "inappropriateCount") @Default(0) int inappropriateCount,
    DateTime? firstReported,
    DateTime? lastUpdated,
    String? userMobile,
  }) = _FraudModel;

  factory FraudModel.fromJson(Map<String, Object?> json) =>
      _$FraudModelFromJson(json);
}
