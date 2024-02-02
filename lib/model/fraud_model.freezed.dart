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
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  double get impact => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "affectedCount")
  int get affected => throw _privateConstructorUsedError;
  @JsonKey(name: "inappropriateCount")
  int get inappropriateCount => throw _privateConstructorUsedError;
  DateTime? get firstReported => throw _privateConstructorUsedError;
  DateTime? get lastUpdated => throw _privateConstructorUsedError;
  String? get userMobile => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "_id") String? id,
      String type,
      double impact,
      String? title,
      String? description,
      @JsonKey(name: "affectedCount") int affected,
      @JsonKey(name: "inappropriateCount") int inappropriateCount,
      DateTime? firstReported,
      DateTime? lastUpdated,
      String? userMobile});
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
    Object? id = freezed,
    Object? type = null,
    Object? impact = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? affected = null,
    Object? inappropriateCount = null,
    Object? firstReported = freezed,
    Object? lastUpdated = freezed,
    Object? userMobile = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
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
      userMobile: freezed == userMobile
          ? _value.userMobile
          : userMobile // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {@JsonKey(name: "_id") String? id,
      String type,
      double impact,
      String? title,
      String? description,
      @JsonKey(name: "affectedCount") int affected,
      @JsonKey(name: "inappropriateCount") int inappropriateCount,
      DateTime? firstReported,
      DateTime? lastUpdated,
      String? userMobile});
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
    Object? id = freezed,
    Object? type = null,
    Object? impact = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? affected = null,
    Object? inappropriateCount = null,
    Object? firstReported = freezed,
    Object? lastUpdated = freezed,
    Object? userMobile = freezed,
  }) {
    return _then(_$FraudModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
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
      userMobile: freezed == userMobile
          ? _value.userMobile
          : userMobile // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$FraudModelImpl with DiagnosticableTreeMixin implements _FraudModel {
  const _$FraudModelImpl(
      {@JsonKey(name: "_id") this.id,
      this.type = "SMS",
      this.impact = 0.1,
      this.title,
      this.description,
      @JsonKey(name: "affectedCount") this.affected = 0,
      @JsonKey(name: "inappropriateCount") this.inappropriateCount = 0,
      this.firstReported,
      this.lastUpdated,
      this.userMobile});

  factory _$FraudModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FraudModelImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final double impact;
  @override
  final String? title;
  @override
  final String? description;
  @override
  @JsonKey(name: "affectedCount")
  final int affected;
  @override
  @JsonKey(name: "inappropriateCount")
  final int inappropriateCount;
  @override
  final DateTime? firstReported;
  @override
  final DateTime? lastUpdated;
  @override
  final String? userMobile;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FraudModel(id: $id, type: $type, impact: $impact, title: $title, description: $description, affected: $affected, inappropriateCount: $inappropriateCount, firstReported: $firstReported, lastUpdated: $lastUpdated, userMobile: $userMobile)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FraudModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('impact', impact))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('affected', affected))
      ..add(DiagnosticsProperty('inappropriateCount', inappropriateCount))
      ..add(DiagnosticsProperty('firstReported', firstReported))
      ..add(DiagnosticsProperty('lastUpdated', lastUpdated))
      ..add(DiagnosticsProperty('userMobile', userMobile));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FraudModelImpl &&
            (identical(other.id, id) || other.id == id) &&
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
                other.lastUpdated == lastUpdated) &&
            (identical(other.userMobile, userMobile) ||
                other.userMobile == userMobile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      impact,
      title,
      description,
      affected,
      inappropriateCount,
      firstReported,
      lastUpdated,
      userMobile);

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
      {@JsonKey(name: "_id") final String? id,
      final String type,
      final double impact,
      final String? title,
      final String? description,
      @JsonKey(name: "affectedCount") final int affected,
      @JsonKey(name: "inappropriateCount") final int inappropriateCount,
      final DateTime? firstReported,
      final DateTime? lastUpdated,
      final String? userMobile}) = _$FraudModelImpl;

  factory _FraudModel.fromJson(Map<String, dynamic> json) =
      _$FraudModelImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String get type;
  @override
  double get impact;
  @override
  String? get title;
  @override
  String? get description;
  @override
  @JsonKey(name: "affectedCount")
  int get affected;
  @override
  @JsonKey(name: "inappropriateCount")
  int get inappropriateCount;
  @override
  DateTime? get firstReported;
  @override
  DateTime? get lastUpdated;
  @override
  String? get userMobile;
  @override
  @JsonKey(ignore: true)
  _$$FraudModelImplCopyWith<_$FraudModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
