// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationResponse _$LocationResponseFromJson(Map<String, dynamic> json) {
  return _LocationResponse.fromJson(json);
}

/// @nodoc
class _$LocationResponseTearOff {
  const _$LocationResponseTearOff();

  _LocationResponse call(
      {String? httpStatus,
      int? httpStatusCode,
      bool? success,
      String? message,
      String? apiName,
      List<Datum>? data}) {
    return _LocationResponse(
      httpStatus: httpStatus,
      httpStatusCode: httpStatusCode,
      success: success,
      message: message,
      apiName: apiName,
      data: data,
    );
  }

  LocationResponse fromJson(Map<String, Object?> json) {
    return LocationResponse.fromJson(json);
  }
}

/// @nodoc
const $LocationResponse = _$LocationResponseTearOff();

/// @nodoc
mixin _$LocationResponse {
  String? get httpStatus => throw _privateConstructorUsedError;
  int? get httpStatusCode => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get apiName => throw _privateConstructorUsedError;
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationResponseCopyWith<LocationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationResponseCopyWith<$Res> {
  factory $LocationResponseCopyWith(
          LocationResponse value, $Res Function(LocationResponse) then) =
      _$LocationResponseCopyWithImpl<$Res>;
  $Res call(
      {String? httpStatus,
      int? httpStatusCode,
      bool? success,
      String? message,
      String? apiName,
      List<Datum>? data});
}

/// @nodoc
class _$LocationResponseCopyWithImpl<$Res>
    implements $LocationResponseCopyWith<$Res> {
  _$LocationResponseCopyWithImpl(this._value, this._then);

  final LocationResponse _value;
  // ignore: unused_field
  final $Res Function(LocationResponse) _then;

  @override
  $Res call({
    Object? httpStatus = freezed,
    Object? httpStatusCode = freezed,
    Object? success = freezed,
    Object? message = freezed,
    Object? apiName = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      httpStatus: httpStatus == freezed
          ? _value.httpStatus
          : httpStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      httpStatusCode: httpStatusCode == freezed
          ? _value.httpStatusCode
          : httpStatusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      apiName: apiName == freezed
          ? _value.apiName
          : apiName // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ));
  }
}

/// @nodoc
abstract class _$LocationResponseCopyWith<$Res>
    implements $LocationResponseCopyWith<$Res> {
  factory _$LocationResponseCopyWith(
          _LocationResponse value, $Res Function(_LocationResponse) then) =
      __$LocationResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? httpStatus,
      int? httpStatusCode,
      bool? success,
      String? message,
      String? apiName,
      List<Datum>? data});
}

/// @nodoc
class __$LocationResponseCopyWithImpl<$Res>
    extends _$LocationResponseCopyWithImpl<$Res>
    implements _$LocationResponseCopyWith<$Res> {
  __$LocationResponseCopyWithImpl(
      _LocationResponse _value, $Res Function(_LocationResponse) _then)
      : super(_value, (v) => _then(v as _LocationResponse));

  @override
  _LocationResponse get _value => super._value as _LocationResponse;

  @override
  $Res call({
    Object? httpStatus = freezed,
    Object? httpStatusCode = freezed,
    Object? success = freezed,
    Object? message = freezed,
    Object? apiName = freezed,
    Object? data = freezed,
  }) {
    return _then(_LocationResponse(
      httpStatus: httpStatus == freezed
          ? _value.httpStatus
          : httpStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      httpStatusCode: httpStatusCode == freezed
          ? _value.httpStatusCode
          : httpStatusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      apiName: apiName == freezed
          ? _value.apiName
          : apiName // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationResponse implements _LocationResponse {
  _$_LocationResponse(
      {this.httpStatus,
      this.httpStatusCode,
      this.success,
      this.message,
      this.apiName,
      this.data});

  factory _$_LocationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LocationResponseFromJson(json);

  @override
  final String? httpStatus;
  @override
  final int? httpStatusCode;
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final String? apiName;
  @override
  final List<Datum>? data;

  @override
  String toString() {
    return 'LocationResponse(httpStatus: $httpStatus, httpStatusCode: $httpStatusCode, success: $success, message: $message, apiName: $apiName, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationResponse &&
            const DeepCollectionEquality()
                .equals(other.httpStatus, httpStatus) &&
            const DeepCollectionEquality()
                .equals(other.httpStatusCode, httpStatusCode) &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.apiName, apiName) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(httpStatus),
      const DeepCollectionEquality().hash(httpStatusCode),
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(apiName),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$LocationResponseCopyWith<_LocationResponse> get copyWith =>
      __$LocationResponseCopyWithImpl<_LocationResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationResponseToJson(this);
  }
}

abstract class _LocationResponse implements LocationResponse {
  factory _LocationResponse(
      {String? httpStatus,
      int? httpStatusCode,
      bool? success,
      String? message,
      String? apiName,
      List<Datum>? data}) = _$_LocationResponse;

  factory _LocationResponse.fromJson(Map<String, dynamic> json) =
      _$_LocationResponse.fromJson;

  @override
  String? get httpStatus;
  @override
  int? get httpStatusCode;
  @override
  bool? get success;
  @override
  String? get message;
  @override
  String? get apiName;
  @override
  List<Datum>? get data;
  @override
  @JsonKey(ignore: true)
  _$LocationResponseCopyWith<_LocationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
