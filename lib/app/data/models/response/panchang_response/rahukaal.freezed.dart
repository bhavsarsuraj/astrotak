// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rahukaal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Rahukaal _$RahukaalFromJson(Map<String, dynamic> json) {
  return _Rahukaal.fromJson(json);
}

/// @nodoc
class _$RahukaalTearOff {
  const _$RahukaalTearOff();

  _Rahukaal call({String? start, String? end}) {
    return _Rahukaal(
      start: start,
      end: end,
    );
  }

  Rahukaal fromJson(Map<String, Object?> json) {
    return Rahukaal.fromJson(json);
  }
}

/// @nodoc
const $Rahukaal = _$RahukaalTearOff();

/// @nodoc
mixin _$Rahukaal {
  String? get start => throw _privateConstructorUsedError;
  String? get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RahukaalCopyWith<Rahukaal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RahukaalCopyWith<$Res> {
  factory $RahukaalCopyWith(Rahukaal value, $Res Function(Rahukaal) then) =
      _$RahukaalCopyWithImpl<$Res>;
  $Res call({String? start, String? end});
}

/// @nodoc
class _$RahukaalCopyWithImpl<$Res> implements $RahukaalCopyWith<$Res> {
  _$RahukaalCopyWithImpl(this._value, this._then);

  final Rahukaal _value;
  // ignore: unused_field
  final $Res Function(Rahukaal) _then;

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
abstract class _$RahukaalCopyWith<$Res> implements $RahukaalCopyWith<$Res> {
  factory _$RahukaalCopyWith(_Rahukaal value, $Res Function(_Rahukaal) then) =
      __$RahukaalCopyWithImpl<$Res>;
  @override
  $Res call({String? start, String? end});
}

/// @nodoc
class __$RahukaalCopyWithImpl<$Res> extends _$RahukaalCopyWithImpl<$Res>
    implements _$RahukaalCopyWith<$Res> {
  __$RahukaalCopyWithImpl(_Rahukaal _value, $Res Function(_Rahukaal) _then)
      : super(_value, (v) => _then(v as _Rahukaal));

  @override
  _Rahukaal get _value => super._value as _Rahukaal;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_Rahukaal(
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
class _$_Rahukaal implements _Rahukaal {
  _$_Rahukaal({this.start, this.end});

  factory _$_Rahukaal.fromJson(Map<String, dynamic> json) =>
      _$$_RahukaalFromJson(json);

  @override
  final String? start;
  @override
  final String? end;

  @override
  String toString() {
    return 'Rahukaal(start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Rahukaal &&
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
  _$RahukaalCopyWith<_Rahukaal> get copyWith =>
      __$RahukaalCopyWithImpl<_Rahukaal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RahukaalToJson(this);
  }
}

abstract class _Rahukaal implements Rahukaal {
  factory _Rahukaal({String? start, String? end}) = _$_Rahukaal;

  factory _Rahukaal.fromJson(Map<String, dynamic> json) = _$_Rahukaal.fromJson;

  @override
  String? get start;
  @override
  String? get end;
  @override
  @JsonKey(ignore: true)
  _$RahukaalCopyWith<_Rahukaal> get copyWith =>
      throw _privateConstructorUsedError;
}
