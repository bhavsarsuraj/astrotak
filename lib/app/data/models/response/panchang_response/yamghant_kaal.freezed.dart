// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'yamghant_kaal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

YamghantKaal _$YamghantKaalFromJson(Map<String, dynamic> json) {
  return _YamghantKaal.fromJson(json);
}

/// @nodoc
class _$YamghantKaalTearOff {
  const _$YamghantKaalTearOff();

  _YamghantKaal call({String? start, String? end}) {
    return _YamghantKaal(
      start: start,
      end: end,
    );
  }

  YamghantKaal fromJson(Map<String, Object?> json) {
    return YamghantKaal.fromJson(json);
  }
}

/// @nodoc
const $YamghantKaal = _$YamghantKaalTearOff();

/// @nodoc
mixin _$YamghantKaal {
  String? get start => throw _privateConstructorUsedError;
  String? get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YamghantKaalCopyWith<YamghantKaal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YamghantKaalCopyWith<$Res> {
  factory $YamghantKaalCopyWith(
          YamghantKaal value, $Res Function(YamghantKaal) then) =
      _$YamghantKaalCopyWithImpl<$Res>;
  $Res call({String? start, String? end});
}

/// @nodoc
class _$YamghantKaalCopyWithImpl<$Res> implements $YamghantKaalCopyWith<$Res> {
  _$YamghantKaalCopyWithImpl(this._value, this._then);

  final YamghantKaal _value;
  // ignore: unused_field
  final $Res Function(YamghantKaal) _then;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String?,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$YamghantKaalCopyWith<$Res>
    implements $YamghantKaalCopyWith<$Res> {
  factory _$YamghantKaalCopyWith(
          _YamghantKaal value, $Res Function(_YamghantKaal) then) =
      __$YamghantKaalCopyWithImpl<$Res>;
  @override
  $Res call({String? start, String? end});
}

/// @nodoc
class __$YamghantKaalCopyWithImpl<$Res> extends _$YamghantKaalCopyWithImpl<$Res>
    implements _$YamghantKaalCopyWith<$Res> {
  __$YamghantKaalCopyWithImpl(
      _YamghantKaal _value, $Res Function(_YamghantKaal) _then)
      : super(_value, (v) => _then(v as _YamghantKaal));

  @override
  _YamghantKaal get _value => super._value as _YamghantKaal;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_YamghantKaal(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String?,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_YamghantKaal implements _YamghantKaal {
  _$_YamghantKaal({this.start, this.end});

  factory _$_YamghantKaal.fromJson(Map<String, dynamic> json) =>
      _$$_YamghantKaalFromJson(json);

  @override
  final String? start;
  @override
  final String? end;

  @override
  String toString() {
    return 'YamghantKaal(start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _YamghantKaal &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end));

  @JsonKey(ignore: true)
  @override
  _$YamghantKaalCopyWith<_YamghantKaal> get copyWith =>
      __$YamghantKaalCopyWithImpl<_YamghantKaal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_YamghantKaalToJson(this);
  }
}

abstract class _YamghantKaal implements YamghantKaal {
  factory _YamghantKaal({String? start, String? end}) = _$_YamghantKaal;

  factory _YamghantKaal.fromJson(Map<String, dynamic> json) =
      _$_YamghantKaal.fromJson;

  @override
  String? get start;
  @override
  String? get end;
  @override
  @JsonKey(ignore: true)
  _$YamghantKaalCopyWith<_YamghantKaal> get copyWith =>
      throw _privateConstructorUsedError;
}
