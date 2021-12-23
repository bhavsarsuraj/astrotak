// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'astrologers_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AstrologersResponse _$AstrologersResponseFromJson(Map<String, dynamic> json) {
  return _AstrologersResponse.fromJson(json);
}

/// @nodoc
class _$AstrologersResponseTearOff {
  const _$AstrologersResponseTearOff();

  _AstrologersResponse call(
      {String? httpStatus,
      int? httpStatusCode,
      bool? success,
      String? message,
      String? apiName,
      List<Astrologer>? data}) {
    return _AstrologersResponse(
      httpStatus: httpStatus,
      httpStatusCode: httpStatusCode,
      success: success,
      message: message,
      apiName: apiName,
      data: data,
    );
  }

  AstrologersResponse fromJson(Map<String, Object?> json) {
    return AstrologersResponse.fromJson(json);
  }
}

/// @nodoc
const $AstrologersResponse = _$AstrologersResponseTearOff();

/// @nodoc
mixin _$AstrologersResponse {
  String? get httpStatus => throw _privateConstructorUsedError;
  int? get httpStatusCode => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get apiName => throw _privateConstructorUsedError;
  List<Astrologer>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AstrologersResponseCopyWith<AstrologersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AstrologersResponseCopyWith<$Res> {
  factory $AstrologersResponseCopyWith(
          AstrologersResponse value, $Res Function(AstrologersResponse) then) =
      _$AstrologersResponseCopyWithImpl<$Res>;
  $Res call(
      {String? httpStatus,
      int? httpStatusCode,
      bool? success,
      String? message,
      String? apiName,
      List<Astrologer>? data});
}

/// @nodoc
class _$AstrologersResponseCopyWithImpl<$Res>
    implements $AstrologersResponseCopyWith<$Res> {
  _$AstrologersResponseCopyWithImpl(this._value, this._then);

  final AstrologersResponse _value;
  // ignore: unused_field
  final $Res Function(AstrologersResponse) _then;

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
              as List<Astrologer>?,
    ));
  }
}

/// @nodoc
abstract class _$AstrologersResponseCopyWith<$Res>
    implements $AstrologersResponseCopyWith<$Res> {
  factory _$AstrologersResponseCopyWith(_AstrologersResponse value,
          $Res Function(_AstrologersResponse) then) =
      __$AstrologersResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? httpStatus,
      int? httpStatusCode,
      bool? success,
      String? message,
      String? apiName,
      List<Astrologer>? data});
}

/// @nodoc
class __$AstrologersResponseCopyWithImpl<$Res>
    extends _$AstrologersResponseCopyWithImpl<$Res>
    implements _$AstrologersResponseCopyWith<$Res> {
  __$AstrologersResponseCopyWithImpl(
      _AstrologersResponse _value, $Res Function(_AstrologersResponse) _then)
      : super(_value, (v) => _then(v as _AstrologersResponse));

  @override
  _AstrologersResponse get _value => super._value as _AstrologersResponse;

  @override
  $Res call({
    Object? httpStatus = freezed,
    Object? httpStatusCode = freezed,
    Object? success = freezed,
    Object? message = freezed,
    Object? apiName = freezed,
    Object? data = freezed,
  }) {
    return _then(_AstrologersResponse(
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
              as List<Astrologer>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AstrologersResponse implements _AstrologersResponse {
  _$_AstrologersResponse(
      {this.httpStatus,
      this.httpStatusCode,
      this.success,
      this.message,
      this.apiName,
      this.data});

  factory _$_AstrologersResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AstrologersResponseFromJson(json);

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
  final List<Astrologer>? data;

  @override
  String toString() {
    return 'AstrologersResponse(httpStatus: $httpStatus, httpStatusCode: $httpStatusCode, success: $success, message: $message, apiName: $apiName, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AstrologersResponse &&
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
  _$AstrologersResponseCopyWith<_AstrologersResponse> get copyWith =>
      __$AstrologersResponseCopyWithImpl<_AstrologersResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AstrologersResponseToJson(this);
  }
}

abstract class _AstrologersResponse implements AstrologersResponse {
  factory _AstrologersResponse(
      {String? httpStatus,
      int? httpStatusCode,
      bool? success,
      String? message,
      String? apiName,
      List<Astrologer>? data}) = _$_AstrologersResponse;

  factory _AstrologersResponse.fromJson(Map<String, dynamic> json) =
      _$_AstrologersResponse.fromJson;

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
  List<Astrologer>? get data;
  @override
  @JsonKey(ignore: true)
  _$AstrologersResponseCopyWith<_AstrologersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
