import 'package:freezed_annotation/freezed_annotation.dart';

import 'availability.dart';
import 'images.dart';
import 'language.dart';
import 'skill.dart';

part 'astrologer.freezed.dart';
part 'astrologer.g.dart';

@freezed
class Astrologer with _$Astrologer {
  factory Astrologer({
    int? id,
    String? urlSlug,
    dynamic namePrefix,
    String? firstName,
    String? lastName,
    String? aboutMe,
    dynamic profliePicUrl,
    double? experience,
    List<Language>? languages,
    int? minimumCallDuration,
    double? minimumCallDurationCharges,
    double? additionalPerMinuteCharges,
    bool? isAvailable,
    dynamic rating,
    List<Skill>? skills,
    bool? isOnCall,
    int? freeMinutes,
    int? additionalMinute,
    Images? images,
    Availability? availability,
  }) = _Astrologer;

  factory Astrologer.fromJson(Map<String, dynamic> json) =>
      _$AstrologerFromJson(json);
}
