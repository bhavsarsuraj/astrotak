// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'astrologer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Astrologer _$$_AstrologerFromJson(Map<String, dynamic> json) =>
    _$_Astrologer(
      id: json['id'] as int?,
      urlSlug: json['urlSlug'] as String?,
      namePrefix: json['namePrefix'],
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      aboutMe: json['aboutMe'] as String?,
      profliePicUrl: json['profliePicUrl'],
      experience: (json['experience'] as num?)?.toDouble(),
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => Language.fromJson(e as Map<String, dynamic>))
          .toList(),
      minimumCallDuration: json['minimumCallDuration'] as int?,
      minimumCallDurationCharges:
          (json['minimumCallDurationCharges'] as num?)?.toDouble(),
      additionalPerMinuteCharges:
          (json['additionalPerMinuteCharges'] as num?)?.toDouble(),
      isAvailable: json['isAvailable'] as bool?,
      rating: json['rating'],
      skills: (json['skills'] as List<dynamic>?)
          ?.map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
      isOnCall: json['isOnCall'] as bool?,
      freeMinutes: json['freeMinutes'] as int?,
      additionalMinute: json['additionalMinute'] as int?,
      images: json['images'] == null
          ? null
          : Images.fromJson(json['images'] as Map<String, dynamic>),
      availability: json['availability'] == null
          ? null
          : Availability.fromJson(json['availability'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AstrologerToJson(_$_Astrologer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'urlSlug': instance.urlSlug,
      'namePrefix': instance.namePrefix,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'aboutMe': instance.aboutMe,
      'profliePicUrl': instance.profliePicUrl,
      'experience': instance.experience,
      'languages': instance.languages,
      'minimumCallDuration': instance.minimumCallDuration,
      'minimumCallDurationCharges': instance.minimumCallDurationCharges,
      'additionalPerMinuteCharges': instance.additionalPerMinuteCharges,
      'isAvailable': instance.isAvailable,
      'rating': instance.rating,
      'skills': instance.skills,
      'isOnCall': instance.isOnCall,
      'freeMinutes': instance.freeMinutes,
      'additionalMinute': instance.additionalMinute,
      'images': instance.images,
      'availability': instance.availability,
    };
