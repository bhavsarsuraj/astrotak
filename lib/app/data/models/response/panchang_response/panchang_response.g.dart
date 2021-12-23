// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'panchang_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PanchangResponse _$$_PanchangResponseFromJson(Map<String, dynamic> json) =>
    _$_PanchangResponse(
      httpStatus: json['httpStatus'] as String?,
      httpStatusCode: json['httpStatusCode'] as int?,
      success: json['success'] as bool?,
      message: json['message'] as String?,
      apiName: json['apiName'] as String?,
      data: json['data'] == null
          ? null
          : Panchang.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PanchangResponseToJson(_$_PanchangResponse instance) =>
    <String, dynamic>{
      'httpStatus': instance.httpStatus,
      'httpStatusCode': instance.httpStatusCode,
      'success': instance.success,
      'message': instance.message,
      'apiName': instance.apiName,
      'data': instance.data,
    };
