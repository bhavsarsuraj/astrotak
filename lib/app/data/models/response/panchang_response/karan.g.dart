// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'karan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Karan _$$_KaranFromJson(Map<String, dynamic> json) => _$_Karan(
      details: json['details'] == null
          ? null
          : Details.fromJson(json['details'] as Map<String, dynamic>),
      endTime: json['end_time'] == null
          ? null
          : EndTime.fromJson(json['end_time'] as Map<String, dynamic>),
      endTimeMs: json['end_time_ms'] as int?,
    );

Map<String, dynamic> _$$_KaranToJson(_$_Karan instance) => <String, dynamic>{
      'details': instance.details,
      'end_time': instance.endTime,
      'end_time_ms': instance.endTimeMs,
    };
