// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'abhijit_muhurta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AbhijitMuhurta _$AbhijitMuhurtaFromJson(Map<String, dynamic> json) {
  return _AbhijitMuhurta.fromJson(json);
}

/// @nodoc
class _$AbhijitMuhurtaTearOff {
  const _$AbhijitMuhurtaTearOff();

  _AbhijitMuhurta call({String? start, String? end}) {
    return _AbhijitMuhurta(
      start: start,
      end: end,
    );
  }

  AbhijitMuhurta fromJson(Map<String, Object?> json) {
    return AbhijitMuhurta.fromJson(json);
  }
}

/// @nodoc
const $AbhijitMuhurta = _$AbhijitMuhurtaTearOff();

/// @nodoc
mixin _$AbhijitMuhurta {
  String? get start => throw _privateConstructorUsedError;
  String? get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbhijitMuhurtaCopyWith<AbhijitMuhurta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbhijitMuhurtaCopyWith<$Res> {
  factory $AbhijitMuhurtaCopyWith(
          AbhijitMuhurta value, $Res Function(AbhijitMuhurta) then) =
      _$AbhijitMuhurtaCopyWithImpl<$Res>;
  $Res call({String? start, String? end});
}

/// @nodoc
class _$AbhijitMuhurtaCopyWithImpl<$Res>
    implements $AbhijitMuhurtaCopyWith<$Res> {
  _$AbhijitMuhurtaCopyWithImpl(this._value, this._then);

  final AbhijitMuhurta _value;
  // ignore: unused_field
  final $Res Function(AbhijitMuhurta) _then;

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
abstract class _$AbhijitMuhurtaCopyWith<$Res>
    implements $AbhijitMuhurtaCopyWith<$Res> {
  factory _$AbhijitMuhurtaCopyWith(
          _AbhijitMuhurta value, $Res Function(_AbhijitMuhurta) then) =
      __$AbhijitMuhurtaCopyWithImpl<$Res>;
  @override
  $Res call({String? start, String? end});
}

/// @nodoc
class __$AbhijitMuhurtaCopyWithImpl<$Res>
    extends _$AbhijitMuhurtaCopyWithImpl<$Res>
    implements _$AbhijitMuhurtaCopyWith<$Res> {
  __$AbhijitMuhurtaCopyWithImpl(
      _AbhijitMuhurta _value, $Res Function(_AbhijitMuhurta) _then)
      : super(_value, (v) => _then(v as _AbhijitMuhurta));

  @override
  _AbhijitMuhurta get _value => super._value as _AbhijitMuhurta;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_AbhijitMuhurta(
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
class _$_AbhijitMuhurta implements _AbhijitMuhurta {
  _$_AbhijitMuhurta({this.start, this.end});

  factory _$_AbhijitMuhurta.fromJson(Map<String, dynamic> json) =>
      _$$_AbhijitMuhurtaFromJson(json);

  @override
  final String? start;
  @override
  final String? end;

  @override
  String toString() {
    return 'AbhijitMuhurta(start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AbhijitMuhurta &&
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
  _$AbhijitMuhurtaCopyWith<_AbhijitMuhurta> get copyWith =>
      __$AbhijitMuhurtaCopyWithImpl<_AbhijitMuhurta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AbhijitMuhurtaToJson(this);
  }
}

abstract class _AbhijitMuhurta implements AbhijitMuhurta {
  factory _AbhijitMuhurta({String? start, String? end}) = _$_AbhijitMuhurta;

  factory _AbhijitMuhurta.fromJson(Map<String, dynamic> json) =
      _$_AbhijitMuhurta.fromJson;

  @override
  String? get start;
  @override
  String? get end;
  @override
  @JsonKey(ignore: true)
  _$AbhijitMuhurtaCopyWith<_AbhijitMuhurta> get copyWith =>
      throw _privateConstructorUsedError;
}
