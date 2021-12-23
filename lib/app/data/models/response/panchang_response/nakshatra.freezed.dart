// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'nakshatra.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Nakshatra _$NakshatraFromJson(Map<String, dynamic> json) {
  return _Nakshatra.fromJson(json);
}

/// @nodoc
class _$NakshatraTearOff {
  const _$NakshatraTearOff();

  _Nakshatra call(
      {Details? details,
      @JsonKey(name: 'end_time') EndTime? endTime,
      @JsonKey(name: 'end_time_ms') int? endTimeMs}) {
    return _Nakshatra(
      details: details,
      endTime: endTime,
      endTimeMs: endTimeMs,
    );
  }

  Nakshatra fromJson(Map<String, Object?> json) {
    return Nakshatra.fromJson(json);
  }
}

/// @nodoc
const $Nakshatra = _$NakshatraTearOff();

/// @nodoc
mixin _$Nakshatra {
  Details? get details => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  EndTime? get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time_ms')
  int? get endTimeMs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NakshatraCopyWith<Nakshatra> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NakshatraCopyWith<$Res> {
  factory $NakshatraCopyWith(Nakshatra value, $Res Function(Nakshatra) then) =
      _$NakshatraCopyWithImpl<$Res>;
  $Res call(
      {Details? details,
      @JsonKey(name: 'end_time') EndTime? endTime,
      @JsonKey(name: 'end_time_ms') int? endTimeMs});

  $DetailsCopyWith<$Res>? get details;
  $EndTimeCopyWith<$Res>? get endTime;
}

/// @nodoc
class _$NakshatraCopyWithImpl<$Res> implements $NakshatraCopyWith<$Res> {
  _$NakshatraCopyWithImpl(this._value, this._then);

  final Nakshatra _value;
  // ignore: unused_field
  final $Res Function(Nakshatra) _then;

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
abstract class _$NakshatraCopyWith<$Res> implements $NakshatraCopyWith<$Res> {
  factory _$NakshatraCopyWith(
          _Nakshatra value, $Res Function(_Nakshatra) then) =
      __$NakshatraCopyWithImpl<$Res>;
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
class __$NakshatraCopyWithImpl<$Res> extends _$NakshatraCopyWithImpl<$Res>
    implements _$NakshatraCopyWith<$Res> {
  __$NakshatraCopyWithImpl(_Nakshatra _value, $Res Function(_Nakshatra) _then)
      : super(_value, (v) => _then(v as _Nakshatra));

  @override
  _Nakshatra get _value => super._value as _Nakshatra;

  @override
  $Res call({
    Object? details = freezed,
    Object? endTime = freezed,
    Object? endTimeMs = freezed,
  }) {
    return _then(_Nakshatra(
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
class _$_Nakshatra implements _Nakshatra {
  _$_Nakshatra(
      {this.details,
      @JsonKey(name: 'end_time') this.endTime,
      @JsonKey(name: 'end_time_ms') this.endTimeMs});

  factory _$_Nakshatra.fromJson(Map<String, dynamic> json) =>
      _$$_NakshatraFromJson(json);

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
    return 'Nakshatra(details: $details, endTime: $endTime, endTimeMs: $endTimeMs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Nakshatra &&
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
  _$NakshatraCopyWith<_Nakshatra> get copyWith =>
      __$NakshatraCopyWithImpl<_Nakshatra>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NakshatraToJson(this);
  }
}

abstract class _Nakshatra implements Nakshatra {
  factory _Nakshatra(
      {Details? details,
      @JsonKey(name: 'end_time') EndTime? endTime,
      @JsonKey(name: 'end_time_ms') int? endTimeMs}) = _$_Nakshatra;

  factory _Nakshatra.fromJson(Map<String, dynamic> json) =
      _$_Nakshatra.fromJson;

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
  _$NakshatraCopyWith<_Nakshatra> get copyWith =>
      throw _privateConstructorUsedError;
}
