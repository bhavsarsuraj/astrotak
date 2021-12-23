// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Details _$$_DetailsFromJson(Map<String, dynamic> json) => _$_Details(
      tithiNumber: json['tithi_number'] as int?,
      tithiName: json['tithi_name'] as String?,
      nakNumber: json['nak_number'] as int?,
      nakName: json['nak_name'] as String?,
      yogNumber: json['yog_number'] as int?,
      yogName: json['yog_name'] as String?,
      karanNumber: json['karan_number'] as int?,
      karanName: json['karan_name'] as String?,
      special: json['special'] as String?,
      summary: json['summary'] as String?,
      deity: json['deity'] as String?,
      meaning: json['meaning'] as String?,
      ruler: json['ruler'] as String?,
    );

Map<String, dynamic> _$$_DetailsToJson(_$_Details instance) =>
    <String, dynamic>{
      'tithi_number': instance.tithiNumber,
      'tithi_name': instance.tithiName,
      'nak_number': instance.nakNumber,
      'nak_name': instance.nakName,
      'yog_number': instance.yogNumber,
      'yog_name': instance.yogName,
      'karan_number': instance.karanNumber,
      'karan_name': instance.karanName,
      'special': instance.special,
      'summary': instance.summary,
      'deity': instance.deity,
      'meaning': instance.meaning,
      'ruler': instance.ruler,
    };
