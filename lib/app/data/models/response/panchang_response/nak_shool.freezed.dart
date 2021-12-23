// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'nak_shool.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NakShool _$NakShoolFromJson(Map<String, dynamic> json) {
  return _NakShool.fromJson(json);
}

/// @nodoc
class _$NakShoolTearOff {
  const _$NakShoolTearOff();

  _NakShool call({String? direction, String? remedies}) {
    return _NakShool(
      direction: direction,
      remedies: remedies,
    );
  }

  NakShool fromJson(Map<String, Object?> json) {
    return NakShool.fromJson(json);
  }
}

/// @nodoc
const $NakShool = _$NakShoolTearOff();

/// @nodoc
mixin _$NakShool {
  String? get direction => throw _privateConstructorUsedError;
  String? get remedies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NakShoolCopyWith<NakShool> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NakShoolCopyWith<$Res> {
  factory $NakShoolCopyWith(NakShool value, $Res Function(NakShool) then) =
      _$NakShoolCopyWithImpl<$Res>;
  $Res call({String? direction, String? remedies});
}

/// @nodoc
class _$NakShoolCopyWithImpl<$Res> implements $NakShoolCopyWith<$Res> {
  _$NakShoolCopyWithImpl(this._value, this._then);

  final NakShool _value;
  // ignore: unused_field
  final $Res Function(NakShool) _then;

  @override
  $Res call({
    Object? direction = freezed,
    Object? remedies = freezed,
  }) {
    return _then(_value.copyWith(
      direction: direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String?,
      remedies: remedies == freezed
          ? _value.remedies
          : remedies // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$NakShoolCopyWith<$Res> implements $NakShoolCopyWith<$Res> {
  factory _$NakShoolCopyWith(_NakShool value, $Res Function(_NakShool) then) =
      __$NakShoolCopyWithImpl<$Res>;
  @override
  $Res call({String? direction, String? remedies});
}

/// @nodoc
class __$NakShoolCopyWithImpl<$Res> extends _$NakShoolCopyWithImpl<$Res>
    implements _$NakShoolCopyWith<$Res> {
  __$NakShoolCopyWithImpl(_NakShool _value, $Res Function(_NakShool) _then)
      : super(_value, (v) => _then(v as _NakShool));

  @override
  _NakShool get _value => super._value as _NakShool;

  @override
  $Res call({
    Object? direction = freezed,
    Object? remedies = freezed,
  }) {
    return _then(_NakShool(
      direction: direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String?,
      remedies: remedies == freezed
          ? _value.remedies
          : remedies // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NakShool implements _NakShool {
  _$_NakShool({this.direction, this.remedies});

  factory _$_NakShool.fromJson(Map<String, dynamic> json) =>
      _$$_NakShoolFromJson(json);

  @override
  final String? direction;
  @override
  final String? remedies;

  @override
  String toString() {
    return 'NakShool(direction: $direction, remedies: $remedies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NakShool &&
            const DeepCollectionEquality().equals(other.direction, direction) &&
            const DeepCollectionEquality().equals(other.remedies, remedies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(direction),
      const DeepCollectionEquality().hash(remedies));

  @JsonKey(ignore: true)
  @override
  _$NakShoolCopyWith<_NakShool> get copyWith =>
      __$NakShoolCopyWithImpl<_NakShool>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NakShoolToJson(this);
  }
}

abstract class _NakShool implements NakShool {
  factory _NakShool({String? direction, String? remedies}) = _$_NakShool;

  factory _NakShool.fromJson(Map<String, dynamic> json) = _$_NakShool.fromJson;

  @override
  String? get direction;
  @override
  String? get remedies;
  @override
  @JsonKey(ignore: true)
  _$NakShoolCopyWith<_NakShool> get copyWith =>
      throw _privateConstructorUsedError;
}
