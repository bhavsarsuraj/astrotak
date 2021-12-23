// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'availability.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Availability _$AvailabilityFromJson(Map<String, dynamic> json) {
  return _Availability.fromJson(json);
}

/// @nodoc
class _$AvailabilityTearOff {
  const _$AvailabilityTearOff();

  _Availability call({List<String>? days, Slot? slot}) {
    return _Availability(
      days: days,
      slot: slot,
    );
  }

  Availability fromJson(Map<String, Object?> json) {
    return Availability.fromJson(json);
  }
}

/// @nodoc
const $Availability = _$AvailabilityTearOff();

/// @nodoc
mixin _$Availability {
  List<String>? get days => throw _privateConstructorUsedError;
  Slot? get slot => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailabilityCopyWith<Availability> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityCopyWith<$Res> {
  factory $AvailabilityCopyWith(
          Availability value, $Res Function(Availability) then) =
      _$AvailabilityCopyWithImpl<$Res>;
  $Res call({List<String>? days, Slot? slot});

  $SlotCopyWith<$Res>? get slot;
}

/// @nodoc
class _$AvailabilityCopyWithImpl<$Res> implements $AvailabilityCopyWith<$Res> {
  _$AvailabilityCopyWithImpl(this._value, this._then);

  final Availability _value;
  // ignore: unused_field
  final $Res Function(Availability) _then;

  @override
  $Res call({
    Object? days = freezed,
    Object? slot = freezed,
  }) {
    return _then(_value.copyWith(
      days: days == freezed
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      slot: slot == freezed
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as Slot?,
    ));
  }

  @override
  $SlotCopyWith<$Res>? get slot {
    if (_value.slot == null) {
      return null;
    }

    return $SlotCopyWith<$Res>(_value.slot!, (value) {
      return _then(_value.copyWith(slot: value));
    });
  }
}

/// @nodoc
abstract class _$AvailabilityCopyWith<$Res>
    implements $AvailabilityCopyWith<$Res> {
  factory _$AvailabilityCopyWith(
          _Availability value, $Res Function(_Availability) then) =
      __$AvailabilityCopyWithImpl<$Res>;
  @override
  $Res call({List<String>? days, Slot? slot});

  @override
  $SlotCopyWith<$Res>? get slot;
}

/// @nodoc
class __$AvailabilityCopyWithImpl<$Res> extends _$AvailabilityCopyWithImpl<$Res>
    implements _$AvailabilityCopyWith<$Res> {
  __$AvailabilityCopyWithImpl(
      _Availability _value, $Res Function(_Availability) _then)
      : super(_value, (v) => _then(v as _Availability));

  @override
  _Availability get _value => super._value as _Availability;

  @override
  $Res call({
    Object? days = freezed,
    Object? slot = freezed,
  }) {
    return _then(_Availability(
      days: days == freezed
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      slot: slot == freezed
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as Slot?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Availability implements _Availability {
  _$_Availability({this.days, this.slot});

  factory _$_Availability.fromJson(Map<String, dynamic> json) =>
      _$$_AvailabilityFromJson(json);

  @override
  final List<String>? days;
  @override
  final Slot? slot;

  @override
  String toString() {
    return 'Availability(days: $days, slot: $slot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Availability &&
            const DeepCollectionEquality().equals(other.days, days) &&
            const DeepCollectionEquality().equals(other.slot, slot));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(days),
      const DeepCollectionEquality().hash(slot));

  @JsonKey(ignore: true)
  @override
  _$AvailabilityCopyWith<_Availability> get copyWith =>
      __$AvailabilityCopyWithImpl<_Availability>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AvailabilityToJson(this);
  }
}

abstract class _Availability implements Availability {
  factory _Availability({List<String>? days, Slot? slot}) = _$_Availability;

  factory _Availability.fromJson(Map<String, dynamic> json) =
      _$_Availability.fromJson;

  @override
  List<String>? get days;
  @override
  Slot? get slot;
  @override
  @JsonKey(ignore: true)
  _$AvailabilityCopyWith<_Availability> get copyWith =>
      throw _privateConstructorUsedError;
}
