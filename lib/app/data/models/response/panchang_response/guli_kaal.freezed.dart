// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'guli_kaal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GuliKaal _$GuliKaalFromJson(Map<String, dynamic> json) {
  return _GuliKaal.fromJson(json);
}

/// @nodoc
class _$GuliKaalTearOff {
  const _$GuliKaalTearOff();

  _GuliKaal call({String? start, String? end}) {
    return _GuliKaal(
      start: start,
      end: end,
    );
  }

  GuliKaal fromJson(Map<String, Object?> json) {
    return GuliKaal.fromJson(json);
  }
}

/// @nodoc
const $GuliKaal = _$GuliKaalTearOff();

/// @nodoc
mixin _$GuliKaal {
  String? get start => throw _privateConstructorUsedError;
  String? get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuliKaalCopyWith<GuliKaal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuliKaalCopyWith<$Res> {
  factory $GuliKaalCopyWith(GuliKaal value, $Res Function(GuliKaal) then) =
      _$GuliKaalCopyWithImpl<$Res>;
  $Res call({String? start, String? end});
}

/// @nodoc
class _$GuliKaalCopyWithImpl<$Res> implements $GuliKaalCopyWith<$Res> {
  _$GuliKaalCopyWithImpl(this._value, this._then);

  final GuliKaal _value;
  // ignore: unused_field
  final $Res Function(GuliKaal) _then;

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
abstract class _$GuliKaalCopyWith<$Res> implements $GuliKaalCopyWith<$Res> {
  factory _$GuliKaalCopyWith(_GuliKaal value, $Res Function(_GuliKaal) then) =
      __$GuliKaalCopyWithImpl<$Res>;
  @override
  $Res call({String? start, String? end});
}

/// @nodoc
class __$GuliKaalCopyWithImpl<$Res> extends _$GuliKaalCopyWithImpl<$Res>
    implements _$GuliKaalCopyWith<$Res> {
  __$GuliKaalCopyWithImpl(_GuliKaal _value, $Res Function(_GuliKaal) _then)
      : super(_value, (v) => _then(v as _GuliKaal));

  @override
  _GuliKaal get _value => super._value as _GuliKaal;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_GuliKaal(
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
class _$_GuliKaal implements _GuliKaal {
  _$_GuliKaal({this.start, this.end});

  factory _$_GuliKaal.fromJson(Map<String, dynamic> json) =>
      _$$_GuliKaalFromJson(json);

  @override
  final String? start;
  @override
  final String? end;

  @override
  String toString() {
    return 'GuliKaal(start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GuliKaal &&
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
  _$GuliKaalCopyWith<_GuliKaal> get copyWith =>
      __$GuliKaalCopyWithImpl<_GuliKaal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GuliKaalToJson(this);
  }
}

abstract class _GuliKaal implements GuliKaal {
  factory _GuliKaal({String? start, String? end}) = _$_GuliKaal;

  factory _GuliKaal.fromJson(Map<String, dynamic> json) = _$_GuliKaal.fromJson;

  @override
  String? get start;
  @override
  String? get end;
  @override
  @JsonKey(ignore: true)
  _$GuliKaalCopyWith<_GuliKaal> get copyWith =>
      throw _privateConstructorUsedError;
}
