// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'end_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EndTime _$EndTimeFromJson(Map<String, dynamic> json) {
  return _EndTime.fromJson(json);
}

/// @nodoc
class _$EndTimeTearOff {
  const _$EndTimeTearOff();

  _EndTime call({int? hour, int? minute, int? second}) {
    return _EndTime(
      hour: hour,
      minute: minute,
      second: second,
    );
  }

  EndTime fromJson(Map<String, Object?> json) {
    return EndTime.fromJson(json);
  }
}

/// @nodoc
const $EndTime = _$EndTimeTearOff();

/// @nodoc
mixin _$EndTime {
  int? get hour => throw _privateConstructorUsedError;
  int? get minute => throw _privateConstructorUsedError;
  int? get second => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EndTimeCopyWith<EndTime> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EndTimeCopyWith<$Res> {
  factory $EndTimeCopyWith(EndTime value, $Res Function(EndTime) then) =
      _$EndTimeCopyWithImpl<$Res>;
  $Res call({int? hour, int? minute, int? second});
}

/// @nodoc
class _$EndTimeCopyWithImpl<$Res> implements $EndTimeCopyWith<$Res> {
  _$EndTimeCopyWithImpl(this._value, this._then);

  final EndTime _value;
  // ignore: unused_field
  final $Res Function(EndTime) _then;

  @override
  $Res call({
    Object? hour = freezed,
    Object? minute = freezed,
    Object? second = freezed,
  }) {
    return _then(_value.copyWith(
      hour: hour == freezed
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int?,
      minute: minute == freezed
          ? _value.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int?,
      second: second == freezed
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$EndTimeCopyWith<$Res> implements $EndTimeCopyWith<$Res> {
  factory _$EndTimeCopyWith(_EndTime value, $Res Function(_EndTime) then) =
      __$EndTimeCopyWithImpl<$Res>;
  @override
  $Res call({int? hour, int? minute, int? second});
}

/// @nodoc
class __$EndTimeCopyWithImpl<$Res> extends _$EndTimeCopyWithImpl<$Res>
    implements _$EndTimeCopyWith<$Res> {
  __$EndTimeCopyWithImpl(_EndTime _value, $Res Function(_EndTime) _then)
      : super(_value, (v) => _then(v as _EndTime));

  @override
  _EndTime get _value => super._value as _EndTime;

  @override
  $Res call({
    Object? hour = freezed,
    Object? minute = freezed,
    Object? second = freezed,
  }) {
    return _then(_EndTime(
      hour: hour == freezed
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int?,
      minute: minute == freezed
          ? _value.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int?,
      second: second == freezed
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EndTime implements _EndTime {
  _$_EndTime({this.hour, this.minute, this.second});

  factory _$_EndTime.fromJson(Map<String, dynamic> json) =>
      _$$_EndTimeFromJson(json);

  @override
  final int? hour;
  @override
  final int? minute;
  @override
  final int? second;

  @override
  String toString() {
    return 'EndTime(hour: $hour, minute: $minute, second: $second)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EndTime &&
            const DeepCollectionEquality().equals(other.hour, hour) &&
            const DeepCollectionEquality().equals(other.minute, minute) &&
            const DeepCollectionEquality().equals(other.second, second));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hour),
      const DeepCollectionEquality().hash(minute),
      const DeepCollectionEquality().hash(second));

  @JsonKey(ignore: true)
  @override
  _$EndTimeCopyWith<_EndTime> get copyWith =>
      __$EndTimeCopyWithImpl<_EndTime>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EndTimeToJson(this);
  }
}

abstract class _EndTime implements EndTime {
  factory _EndTime({int? hour, int? minute, int? second}) = _$_EndTime;

  factory _EndTime.fromJson(Map<String, dynamic> json) = _$_EndTime.fromJson;

  @override
  int? get hour;
  @override
  int? get minute;
  @override
  int? get second;
  @override
  @JsonKey(ignore: true)
  _$EndTimeCopyWith<_EndTime> get copyWith =>
      throw _privateConstructorUsedError;
}
