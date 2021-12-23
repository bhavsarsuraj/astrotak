// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'panchang_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PanchangRequest _$$_PanchangRequestFromJson(Map<String, dynamic> json) =>
    _$_PanchangRequest(
      day: json['day'] as int?,
      month: json['month'] as int?,
      year: json['year'] as int?,
      placeId: json['placeId'] as String?,
    );

Map<String, dynamic> _$$_PanchangRequestToJson(_$_PanchangRequest instance) =>
    <String, dynamic>{
      'day': instance.day,
      'month': instance.month,
      'year': instance.year,
      'placeId': instance.placeId,
    };
