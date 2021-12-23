// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationRequest _$LocationRequestFromJson(Map<String, dynamic> json) {
  return _LocationRequest.fromJson(json);
}

/// @nodoc
class _$LocationRequestTearOff {
  const _$LocationRequestTearOff();

  _LocationRequest call({String? inputPlace}) {
    return _LocationRequest(
      inputPlace: inputPlace,
    );
  }

  LocationRequest fromJson(Map<String, Object?> json) {
    return LocationRequest.fromJson(json);
  }
}

/// @nodoc
const $LocationRequest = _$LocationRequestTearOff();

/// @nodoc
mixin _$LocationRequest {
  String? get inputPlace => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationRequestCopyWith<LocationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationRequestCopyWith<$Res> {
  factory $LocationRequestCopyWith(
          LocationRequest value, $Res Function(LocationRequest) then) =
      _$LocationRequestCopyWithImpl<$Res>;
  $Res call({String? inputPlace});
}

/// @nodoc
class _$LocationRequestCopyWithImpl<$Res>
    implements $LocationRequestCopyWith<$Res> {
  _$LocationRequestCopyWithImpl(this._value, this._then);

  final LocationRequest _value;
  // ignore: unused_field
  final $Res Function(LocationRequest) _then;

  @override
  $Res call({
    Object? inputPlace = freezed,
  }) {
    return _then(_value.copyWith(
      inputPlace: inputPlace == freezed
          ? _value.inputPlace
          : inputPlace // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LocationRequestCopyWith<$Res>
    implements $LocationRequestCopyWith<$Res> {
  factory _$LocationRequestCopyWith(
          _LocationRequest value, $Res Function(_LocationRequest) then) =
      __$LocationRequestCopyWithImpl<$Res>;
  @override
  $Res call({String? inputPlace});
}

/// @nodoc
class __$LocationRequestCopyWithImpl<$Res>
    extends _$LocationRequestCopyWithImpl<$Res>
    implements _$LocationRequestCopyWith<$Res> {
  __$LocationRequestCopyWithImpl(
      _LocationRequest _value, $Res Function(_LocationRequest) _then)
      : super(_value, (v) => _then(v as _LocationRequest));

  @override
  _LocationRequest get _value => super._value as _LocationRequest;

  @override
  $Res call({
    Object? inputPlace = freezed,
  }) {
    return _then(_LocationRequest(
      inputPlace: inputPlace == freezed
          ? _value.inputPlace
          : inputPlace // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationRequest implements _LocationRequest {
  _$_LocationRequest({this.inputPlace});

  factory _$_LocationRequest.fromJson(Map<String, dynamic> json) =>
      _$$_LocationRequestFromJson(json);

  @override
  final String? inputPlace;

  @override
  String toString() {
    return 'LocationRequest(inputPlace: $inputPlace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationRequest &&
            const DeepCollectionEquality()
                .equals(other.inputPlace, inputPlace));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(inputPlace));

  @JsonKey(ignore: true)
  @override
  _$LocationRequestCopyWith<_LocationRequest> get copyWith =>
      __$LocationRequestCopyWithImpl<_LocationRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationRequestToJson(this);
  }
}

abstract class _LocationRequest implements LocationRequest {
  factory _LocationRequest({String? inputPlace}) = _$_LocationRequest;

  factory _LocationRequest.fromJson(Map<String, dynamic> json) =
      _$_LocationRequest.fromJson;

  @override
  String? get inputPlace;
  @override
  @JsonKey(ignore: true)
  _$LocationRequestCopyWith<_LocationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
