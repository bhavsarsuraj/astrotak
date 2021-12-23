// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'astrologers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AstrologersResponse _$$_AstrologersResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AstrologersResponse(
      httpStatus: json['httpStatus'] as String?,
      httpStatusCode: json['httpStatusCode'] as int?,
      success: json['success'] as bool?,
      message: json['message'] as String?,
      apiName: json['apiName'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Astrologer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AstrologersResponseToJson(
        _$_AstrologersResponse instance) =>
    <String, dynamic>{
      'httpStatus': instance.httpStatus,
      'httpStatusCode': instance.httpStatusCode,
      'success': instance.success,
      'message': instance.message,
      'apiName': instance.apiName,
      'data': instance.data,
    };
