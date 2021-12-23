// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'slot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Slot _$SlotFromJson(Map<String, dynamic> json) {
  return _Slot.fromJson(json);
}

/// @nodoc
class _$SlotTearOff {
  const _$SlotTearOff();

  _Slot call({String? toFormat, String? fromFormat, String? from, String? to}) {
    return _Slot(
      toFormat: toFormat,
      fromFormat: fromFormat,
      from: from,
      to: to,
    );
  }

  Slot fromJson(Map<String, Object?> json) {
    return Slot.fromJson(json);
  }
}

/// @nodoc
const $Slot = _$SlotTearOff();

/// @nodoc
mixin _$Slot {
  String? get toFormat => throw _privateConstructorUsedError;
  String? get fromFormat => throw _privateConstructorUsedError;
  String? get from => throw _privateConstructorUsedError;
  String? get to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlotCopyWith<Slot> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotCopyWith<$Res> {
  factory $SlotCopyWith(Slot value, $Res Function(Slot) then) =
      _$SlotCopyWithImpl<$Res>;
  $Res call({String? toFormat, String? fromFormat, String? from, String? to});
}

/// @nodoc
class _$SlotCopyWithImpl<$Res> implements $SlotCopyWith<$Res> {
  _$SlotCopyWithImpl(this._value, this._then);

  final Slot _value;
  // ignore: unused_field
  final $Res Function(Slot) _then;

  @override
  $Res call({
    Object? toFormat = freezed,
    Object? fromFormat = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      toFormat: toFormat == freezed
          ? _value.toFormat
          : toFormat // ignore: cast_nullable_to_non_nullable
              as String?,
      fromFormat: fromFormat == freezed
          ? _value.fromFormat
          : fromFormat // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SlotCopyWith<$Res> implements $SlotCopyWith<$Res> {
  factory _$SlotCopyWith(_Slot value, $Res Function(_Slot) then) =
      __$SlotCopyWithImpl<$Res>;
  @override
  $Res call({String? toFormat, String? fromFormat, String? from, String? to});
}

/// @nodoc
class __$SlotCopyWithImpl<$Res> extends _$SlotCopyWithImpl<$Res>
    implements _$SlotCopyWith<$Res> {
  __$SlotCopyWithImpl(_Slot _value, $Res Function(_Slot) _then)
      : super(_value, (v) => _then(v as _Slot));

  @override
  _Slot get _value => super._value as _Slot;

  @override
  $Res call({
    Object? toFormat = freezed,
    Object? fromFormat = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_Slot(
      toFormat: toFormat == freezed
          ? _value.toFormat
          : toFormat // ignore: cast_nullable_to_non_nullable
              as String?,
      fromFormat: fromFormat == freezed
          ? _value.fromFormat
          : fromFormat // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Slot implements _Slot {
  _$_Slot({this.toFormat, this.fromFormat, this.from, this.to});

  factory _$_Slot.fromJson(Map<String, dynamic> json) => _$$_SlotFromJson(json);

  @override
  final String? toFormat;
  @override
  final String? fromFormat;
  @override
  final String? from;
  @override
  final String? to;

  @override
  String toString() {
    return 'Slot(toFormat: $toFormat, fromFormat: $fromFormat, from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Slot &&
            const DeepCollectionEquality().equals(other.toFormat, toFormat) &&
            const DeepCollectionEquality()
                .equals(other.fromFormat, fromFormat) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(toFormat),
      const DeepCollectionEquality().hash(fromFormat),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to));

  @JsonKey(ignore: true)
  @override
  _$SlotCopyWith<_Slot> get copyWith =>
      __$SlotCopyWithImpl<_Slot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SlotToJson(this);
  }
}

abstract class _Slot implements Slot {
  factory _Slot(
      {String? toFormat,
      String? fromFormat,
      String? from,
      String? to}) = _$_Slot;

  factory _Slot.fromJson(Map<String, dynamic> json) = _$_Slot.fromJson;

  @override
  String? get toFormat;
  @override
  String? get fromFormat;
  @override
  String? get from;
  @override
  String? get to;
  @override
  @JsonKey(ignore: true)
  _$SlotCopyWith<_Slot> get copyWith => throw _privateConstructorUsedError;
}
