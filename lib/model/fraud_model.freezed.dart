// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fraud_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FraudModel _$FraudModelFromJson(Map<String, dynamic> json) {
  return _FraudModel.fromJson(json);
}

/// @nodoc
mixin _$FraudModel {
  String? get type => throw _privateConstructorUsedError;
  double get impact => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get affected => throw _privateConstructorUsedError;
  int get inappropriateCount => throw _privateConstructorUsedError;
  DateTime? get firstReported => throw _privateConstructorUsedError;
  DateTime? get lastUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FraudModelCopyWith<FraudModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FraudModelCopyWith<$Res> {
  factory $FraudModelCopyWith(
          FraudModel value, $Res Function(FraudModel) then) =
      _$FraudModelCopyWithImpl<$Res, FraudModel>;
  @useResult
  $Res call(
      {String? type,
      double impact,
      String? title,
      String? description,
      int affected,
      int inappropriateCount,
      DateTime? firstReported,
      DateTime? lastUpdated});
}

/// @nodoc
class _$FraudModelCopyWithImpl<$Res, $Val extends FraudModel>
    implements $FraudModelCopyWith<$Res> {
  _$FraudModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? impact = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? affected = null,
    Object? inappropriateCount = null,
    Object? firstReported = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      impact: null == impact
          ? _value.impact
          : impact // ignore: cast_nullable_to_non_nullable
              as double,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      affected: null == affected
          ? _value.affected
          : affected // ignore: cast_nullable_to_non_nullable
              as int,
      inappropriateCount: null == inappropriateCount
          ? _value.inappropriateCount
          : inappropriateCount // ignore: cast_nullable_to_non_nullable
              as int,
      firstReported: freezed == firstReported
          ? _value.firstReported
          : firstReported // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FraudModelImplCopyWith<$Res>
    implements $FraudModelCopyWith<$Res> {
  factory _$$FraudModelImplCopyWith(
          _$FraudModelImpl value, $Res Function(_$FraudModelImpl) then) =
      __$$FraudModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? type,
      double impact,
      String? title,
      String? description,
      int affected,
      int inappropriateCount,
      DateTime? firstReported,
      DateTime? lastUpdated});
}

/// @nodoc
class __$$FraudModelImplCopyWithImpl<$Res>
    extends _$FraudModelCopyWithImpl<$Res, _$FraudModelImpl>
    implements _$$FraudModelImplCopyWith<$Res> {
  __$$FraudModelImplCopyWithImpl(
      _$FraudModelImpl _value, $Res Function(_$FraudModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? impact = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? affected = null,
    Object? inappropriateCount = null,
    Object? firstReported = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_$FraudModelImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      impact: null == impact
          ? _value.impact
          : impact // ignore: cast_nullable_to_non_nullable
              as double,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      affected: null == affected
          ? _value.affected
          : affected // ignore: cast_nullable_to_non_nullable
              as int,
      inappropriateCount: null == inappropriateCount
          ? _value.inappropriateCount
          : inappropriateCount // ignore: cast_nullable_to_non_nullable
              as int,
      firstReported: freezed == firstReported
          ? _value.firstReported
          : firstReported // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$FraudModelImpl with DiagnosticableTreeMixin implements _FraudModel {
  const _$FraudModelImpl(
      {this.type,
      this.impact = 0.1,
      this.title,
      this.description,
      this.affected = 0,
      this.inappropriateCount = 0,
      this.firstReported,
      this.lastUpdated});

  factory _$FraudModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FraudModelImplFromJson(json);

  @override
  final String? type;
  @override
  @JsonKey()
  final double impact;
  @override
  final String? title;
  @override
  final String? description;
  @override
  @JsonKey()
  final int affected;
  @override
  @JsonKey()
  final int inappropriateCount;
  @override
  final DateTime? firstReported;
  @override
  final DateTime? lastUpdated;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FraudModel(type: $type, impact: $impact, title: $title, description: $description, affected: $affected, inappropriateCount: $inappropriateCount, firstReported: $firstReported, lastUpdated: $lastUpdated)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FraudModel'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('impact', impact))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('affected', affected))
      ..add(DiagnosticsProperty('inappropriateCount', inappropriateCount))
      ..add(DiagnosticsProperty('firstReported', firstReported))
      ..add(DiagnosticsProperty('lastUpdated', lastUpdated));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FraudModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.impact, impact) || other.impact == impact) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.affected, affected) ||
                other.affected == affected) &&
            (identical(other.inappropriateCount, inappropriateCount) ||
                other.inappropriateCount == inappropriateCount) &&
            (identical(other.firstReported, firstReported) ||
                other.firstReported == firstReported) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, impact, title, description,
      affected, inappropriateCount, firstReported, lastUpdated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FraudModelImplCopyWith<_$FraudModelImpl> get copyWith =>
      __$$FraudModelImplCopyWithImpl<_$FraudModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FraudModelImplToJson(
      this,
    );
  }
}

abstract class _FraudModel implements FraudModel {
  const factory _FraudModel(
      {final String? type,
      final double impact,
      final String? title,
      final String? description,
      final int affected,
      final int inappropriateCount,
      final DateTime? firstReported,
      final DateTime? lastUpdated}) = _$FraudModelImpl;

  factory _FraudModel.fromJson(Map<String, dynamic> json) =
      _$FraudModelImpl.fromJson;

  @override
  String? get type;
  @override
  double get impact;
  @override
  String? get title;
  @override
  String? get description;
  @override
  int get affected;
  @override
  int get inappropriateCount;
  @override
  DateTime? get firstReported;
  @override
  DateTime? get lastUpdated;
  @override
  @JsonKey(ignore: true)
  _$$FraudModelImplCopyWith<_$FraudModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
