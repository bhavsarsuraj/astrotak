// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'panchang_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PanchangRequest _$PanchangRequestFromJson(Map<String, dynamic> json) {
  return _PanchangRequest.fromJson(json);
}

/// @nodoc
class _$PanchangRequestTearOff {
  const _$PanchangRequestTearOff();

  _PanchangRequest call({int? day, int? month, int? year, String? placeId}) {
    return _PanchangRequest(
      day: day,
      month: month,
      year: year,
      placeId: placeId,
    );
  }

  PanchangRequest fromJson(Map<String, Object?> json) {
    return PanchangRequest.fromJson(json);
  }
}

/// @nodoc
const $PanchangRequest = _$PanchangRequestTearOff();

/// @nodoc
mixin _$PanchangRequest {
  int? get day => throw _privateConstructorUsedError;
  int? get month => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;
  String? get placeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PanchangRequestCopyWith<PanchangRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PanchangRequestCopyWith<$Res> {
  factory $PanchangRequestCopyWith(
          PanchangRequest value, $Res Function(PanchangRequest) then) =
      _$PanchangRequestCopyWithImpl<$Res>;
  $Res call({int? day, int? month, int? year, String? placeId});
}

/// @nodoc
class _$PanchangRequestCopyWithImpl<$Res>
    implements $PanchangRequestCopyWith<$Res> {
  _$PanchangRequestCopyWithImpl(this._value, this._then);

  final PanchangRequest _value;
  // ignore: unused_field
  final $Res Function(PanchangRequest) _then;

  @override
  $Res call({
    Object? day = freezed,
    Object? month = freezed,
    Object? year = freezed,
    Object? placeId = freezed,
  }) {
    return _then(_value.copyWith(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PanchangRequestCopyWith<$Res>
    implements $PanchangRequestCopyWith<$Res> {
  factory _$PanchangRequestCopyWith(
          _PanchangRequest value, $Res Function(_PanchangRequest) then) =
      __$PanchangRequestCopyWithImpl<$Res>;
  @override
  $Res call({int? day, int? month, int? year, String? placeId});
}

/// @nodoc
class __$PanchangRequestCopyWithImpl<$Res>
    extends _$PanchangRequestCopyWithImpl<$Res>
    implements _$PanchangRequestCopyWith<$Res> {
  __$PanchangRequestCopyWithImpl(
      _PanchangRequest _value, $Res Function(_PanchangRequest) _then)
      : super(_value, (v) => _then(v as _PanchangRequest));

  @override
  _PanchangRequest get _value => super._value as _PanchangRequest;

  @override
  $Res call({
    Object? day = freezed,
    Object? month = freezed,
    Object? year = freezed,
    Object? placeId = freezed,
  }) {
    return _then(_PanchangRequest(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PanchangRequest implements _PanchangRequest {
  _$_PanchangRequest({this.day, this.month, this.year, this.placeId});

  factory _$_PanchangRequest.fromJson(Map<String, dynamic> json) =>
      _$$_PanchangRequestFromJson(json);

  @override
  final int? day;
  @override
  final int? month;
  @override
  final int? year;
  @override
  final String? placeId;

  @override
  String toString() {
    return 'PanchangRequest(day: $day, month: $month, year: $year, placeId: $placeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PanchangRequest &&
            const DeepCollectionEquality().equals(other.day, day) &&
            const DeepCollectionEquality().equals(other.month, month) &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality().equals(other.placeId, placeId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(day),
      const DeepCollectionEquality().hash(month),
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(placeId));

  @JsonKey(ignore: true)
  @override
  _$PanchangRequestCopyWith<_PanchangRequest> get copyWith =>
      __$PanchangRequestCopyWithImpl<_PanchangRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PanchangRequestToJson(this);
  }
}

abstract class _PanchangRequest implements PanchangRequest {
  factory _PanchangRequest({int? day, int? month, int? year, String? placeId}) =
      _$_PanchangRequest;

  factory _PanchangRequest.fromJson(Map<String, dynamic> json) =
      _$_PanchangRequest.fromJson;

  @override
  int? get day;
  @override
  int? get month;
  @override
  int? get year;
  @override
  String? get placeId;
  @override
  @JsonKey(ignore: true)
  _$PanchangRequestCopyWith<_PanchangRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
