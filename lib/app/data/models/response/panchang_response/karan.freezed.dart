// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'karan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Karan _$KaranFromJson(Map<String, dynamic> json) {
  return _Karan.fromJson(json);
}

/// @nodoc
class _$KaranTearOff {
  const _$KaranTearOff();

  _Karan call(
      {Details? details,
      @JsonKey(name: 'end_time') EndTime? endTime,
      @JsonKey(name: 'end_time_ms') int? endTimeMs}) {
    return _Karan(
      details: details,
      endTime: endTime,
      endTimeMs: endTimeMs,
    );
  }

  Karan fromJson(Map<String, Object?> json) {
    return Karan.fromJson(json);
  }
}

/// @nodoc
const $Karan = _$KaranTearOff();

/// @nodoc
mixin _$Karan {
  Details? get details => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  EndTime? get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time_ms')
  int? get endTimeMs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KaranCopyWith<Karan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KaranCopyWith<$Res> {
  factory $KaranCopyWith(Karan value, $Res Function(Karan) then) =
      _$KaranCopyWithImpl<$Res>;
  $Res call(
      {Details? details,
      @JsonKey(name: 'end_time') EndTime? endTime,
      @JsonKey(name: 'end_time_ms') int? endTimeMs});

  $DetailsCopyWith<$Res>? get details;
  $EndTimeCopyWith<$Res>? get endTime;
}

/// @nodoc
class _$KaranCopyWithImpl<$Res> implements $KaranCopyWith<$Res> {
  _$KaranCopyWithImpl(this._value, this._then);

  final Karan _value;
  // ignore: unused_field
  final $Res Function(Karan) _then;

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
abstract class _$KaranCopyWith<$Res> implements $KaranCopyWith<$Res> {
  factory _$KaranCopyWith(_Karan value, $Res Function(_Karan) then) =
      __$KaranCopyWithImpl<$Res>;
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
class __$KaranCopyWithImpl<$Res> extends _$KaranCopyWithImpl<$Res>
    implements _$KaranCopyWith<$Res> {
  __$KaranCopyWithImpl(_Karan _value, $Res Function(_Karan) _then)
      : super(_value, (v) => _then(v as _Karan));

  @override
  _Karan get _value => super._value as _Karan;

  @override
  $Res call({
    Object? details = freezed,
    Object? endTime = freezed,
    Object? endTimeMs = freezed,
  }) {
    return _then(_Karan(
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
class _$_Karan implements _Karan {
  _$_Karan(
      {this.details,
      @JsonKey(name: 'end_time') this.endTime,
      @JsonKey(name: 'end_time_ms') this.endTimeMs});

  factory _$_Karan.fromJson(Map<String, dynamic> json) =>
      _$$_KaranFromJson(json);

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
    return 'Karan(details: $details, endTime: $endTime, endTimeMs: $endTimeMs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Karan &&
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
  _$KaranCopyWith<_Karan> get copyWith =>
      __$KaranCopyWithImpl<_Karan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KaranToJson(this);
  }
}

abstract class _Karan implements Karan {
  factory _Karan(
      {Details? details,
      @JsonKey(name: 'end_time') EndTime? endTime,
      @JsonKey(name: 'end_time_ms') int? endTimeMs}) = _$_Karan;

  factory _Karan.fromJson(Map<String, dynamic> json) = _$_Karan.fromJson;

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
  _$KaranCopyWith<_Karan> get copyWith => throw _privateConstructorUsedError;
}
