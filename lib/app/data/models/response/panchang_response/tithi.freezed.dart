// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tithi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tithi _$TithiFromJson(Map<String, dynamic> json) {
  return _Tithi.fromJson(json);
}

/// @nodoc
class _$TithiTearOff {
  const _$TithiTearOff();

  _Tithi call(
      {Details? details,
      @JsonKey(name: 'end_time') EndTime? endTime,
      @JsonKey(name: 'end_time_ms') int? endTimeMs}) {
    return _Tithi(
      details: details,
      endTime: endTime,
      endTimeMs: endTimeMs,
    );
  }

  Tithi fromJson(Map<String, Object?> json) {
    return Tithi.fromJson(json);
  }
}

/// @nodoc
const $Tithi = _$TithiTearOff();

/// @nodoc
mixin _$Tithi {
  Details? get details => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  EndTime? get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time_ms')
  int? get endTimeMs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TithiCopyWith<Tithi> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TithiCopyWith<$Res> {
  factory $TithiCopyWith(Tithi value, $Res Function(Tithi) then) =
      _$TithiCopyWithImpl<$Res>;
  $Res call(
      {Details? details,
      @JsonKey(name: 'end_time') EndTime? endTime,
      @JsonKey(name: 'end_time_ms') int? endTimeMs});

  $DetailsCopyWith<$Res>? get details;
  $EndTimeCopyWith<$Res>? get endTime;
}

/// @nodoc
class _$TithiCopyWithImpl<$Res> implements $TithiCopyWith<$Res> {
  _$TithiCopyWithImpl(this._value, this._then);

  final Tithi _value;
  // ignore: unused_field
  final $Res Function(Tithi) _then;

  @override
  $Res call({
    Object? details = freezed,
    Object? endTime = freezed,
    Object? endTimeMs = freezed,
  }) {
    return _then(_value.copyWith(
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Details?,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as EndTime?,
      endTimeMs: endTimeMs == freezed
          ? _value.endTimeMs
          : endTimeMs // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $DetailsCopyWith<$Res>? get details {
    if (_value.details == null) {
      return null;
    }

    return $DetailsCopyWith<$Res>(_value.details!, (value) {
      return _then(_value.copyWith(details: value));
    });
  }

  @override
  $EndTimeCopyWith<$Res>? get endTime {
    if (_value.endTime == null) {
      return null;
    }

    return $EndTimeCopyWith<$Res>(_value.endTime!, (value) {
      return _then(_value.copyWith(endTime: value));
    });
  }
}

/// @nodoc
abstract class _$TithiCopyWith<$Res> implements $TithiCopyWith<$Res> {
  factory _$TithiCopyWith(_Tithi value, $Res Function(_Tithi) then) =
      __$TithiCopyWithImpl<$Res>;
  @override
  $Res call(
      {Details? details,
      @JsonKey(name: 'end_time') EndTime? endTime,
      @JsonKey(name: 'end_time_ms') int? endTimeMs});

  @override
  $DetailsCopyWith<$Res>? get details;
  @override
  $EndTimeCopyWith<$Res>? get endTime;
}

/// @nodoc
class __$TithiCopyWithImpl<$Res> extends _$TithiCopyWithImpl<$Res>
    implements _$TithiCopyWith<$Res> {
  __$TithiCopyWithImpl(_Tithi _value, $Res Function(_Tithi) _then)
      : super(_value, (v) => _then(v as _Tithi));

  @override
  _Tithi get _value => super._value as _Tithi;

  @override
  $Res call({
    Object? details = freezed,
    Object? endTime = freezed,
    Object? endTimeMs = freezed,
  }) {
    return _then(_Tithi(
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Details?,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as EndTime?,
      endTimeMs: endTimeMs == freezed
          ? _value.endTimeMs
          : endTimeMs // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tithi implements _Tithi {
  _$_Tithi(
      {this.details,
      @JsonKey(name: 'end_time') this.endTime,
      @JsonKey(name: 'end_time_ms') this.endTimeMs});

  factory _$_Tithi.fromJson(Map<String, dynamic> json) =>
      _$$_TithiFromJson(json);

  @override
  final Details? details;
  @override
  @JsonKey(name: 'end_time')
  final EndTime? endTime;
  @override
  @JsonKey(name: 'end_time_ms')
  final int? endTimeMs;

  @override
  String toString() {
    return 'Tithi(details: $details, endTime: $endTime, endTimeMs: $endTimeMs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Tithi &&
            const DeepCollectionEquality().equals(other.details, details) &&
            const DeepCollectionEquality().equals(other.endTime, endTime) &&
            const DeepCollectionEquality().equals(other.endTimeMs, endTimeMs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(details),
      const DeepCollectionEquality().hash(endTime),
      const DeepCollectionEquality().hash(endTimeMs));

  @JsonKey(ignore: true)
  @override
  _$TithiCopyWith<_Tithi> get copyWith =>
      __$TithiCopyWithImpl<_Tithi>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TithiToJson(this);
  }
}

abstract class _Tithi implements Tithi {
  factory _Tithi(
      {Details? details,
      @JsonKey(name: 'end_time') EndTime? endTime,
      @JsonKey(name: 'end_time_ms') int? endTimeMs}) = _$_Tithi;

  factory _Tithi.fromJson(Map<String, dynamic> json) = _$_Tithi.fromJson;

  @override
  Details? get details;
  @override
  @JsonKey(name: 'end_time')
  EndTime? get endTime;
  @override
  @JsonKey(name: 'end_time_ms')
  int? get endTimeMs;
  @override
  @JsonKey(ignore: true)
  _$TithiCopyWith<_Tithi> get copyWith => throw _privateConstructorUsedError;
}
