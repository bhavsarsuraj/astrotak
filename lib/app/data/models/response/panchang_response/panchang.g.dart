// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'panchang.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Panchang _$$_PanchangFromJson(Map<String, dynamic> json) => _$_Panchang(
      day: json['day'] as String?,
      sunrise: json['sunrise'] as String?,
      sunset: json['sunset'] as String?,
      moonrise: json['moonrise'] as String?,
      moonset: json['moonset'] as String?,
      vedicSunrise: json['vedic_sunrise'] as String?,
      vedicSunset: json['vedic_sunset'] as String?,
      tithi: json['tithi'] == null
          ? null
          : Tithi.fromJson(json['tithi'] as Map<String, dynamic>),
      nakshatra: json['nakshatra'] == null
          ? null
          : Nakshatra.fromJson(json['nakshatra'] as Map<String, dynamic>),
      yog: json['yog'] == null
          ? null
          : Yog.fromJson(json['yog'] as Map<String, dynamic>),
      karan: json['karan'] == null
          ? null
          : Karan.fromJson(json['karan'] as Map<String, dynamic>),
      hinduMaah: json['hindu_maah'] == null
          ? null
          : HinduMaah.fromJson(json['hindu_maah'] as Map<String, dynamic>),
      paksha: json['paksha'] as String?,
      ritu: json['ritu'] as String?,
      sunSign: json['sun_sign'] as String?,
      moonSign: json['moon_sign'] as String?,
      ayana: json['ayana'] as String?,
      panchangYog: json['panchang_yog'] as String?,
      vikramSamvat: json['vikram_samvat'] as int?,
      shakaSamvat: json['shaka_samvat'] as int?,
      vkramSamvatName: json['vkram_samvat_name'] as String?,
      shakaSamvatName: json['shaka_samvat_name'] as String?,
      dishaShool: json['disha_shool'] as String?,
      dishaShoolRemedies: json['disha_shool_remedies'] as String?,
      nakShool: json['nak_shool'] == null
          ? null
          : NakShool.fromJson(json['nak_shool'] as Map<String, dynamic>),
      moonNivas: json['moon_nivas'] as String?,
      abhijitMuhurta: json['abhijit_muhurta'] == null
          ? null
          : AbhijitMuhurta.fromJson(
              json['abhijit_muhurta'] as Map<String, dynamic>),
      rahukaal: json['rahukaal'] == null
          ? null
          : Rahukaal.fromJson(json['rahukaal'] as Map<String, dynamic>),
      guliKaal: json['guliKaal'] == null
          ? null
          : GuliKaal.fromJson(json['guliKaal'] as Map<String, dynamic>),
      yamghantKaal: json['yamghant_kaal'] == null
          ? null
          : YamghantKaal.fromJson(
              json['yamghant_kaal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PanchangToJson(_$_Panchang instance) =>
    <String, dynamic>{
      'day': instance.day,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moonrise': instance.moonrise,
      'moonset': instance.moonset,
      'vedic_sunrise': instance.vedicSunrise,
      'vedic_sunset': instance.vedicSunset,
      'tithi': instance.tithi,
      'nakshatra': instance.nakshatra,
      'yog': instance.yog,
      'karan': instance.karan,
      'hindu_maah': instance.hinduMaah,
      'paksha': instance.paksha,
      'ritu': instance.ritu,
      'sun_sign': instance.sunSign,
      'moon_sign': instance.moonSign,
      'ayana': instance.ayana,
      'panchang_yog': instance.panchangYog,
      'vikram_samvat': instance.vikramSamvat,
      'shaka_samvat': instance.shakaSamvat,
      'vkram_samvat_name': instance.vkramSamvatName,
      'shaka_samvat_name': instance.shakaSamvatName,
      'disha_shool': instance.dishaShool,
      'disha_shool_remedies': instance.dishaShoolRemedies,
      'nak_shool': instance.nakShool,
      'moon_nivas': instance.moonNivas,
      'abhijit_muhurta': instance.abhijitMuhurta,
      'rahukaal': instance.rahukaal,
      'guliKaal': instance.guliKaal,
      'yamghant_kaal': instance.yamghantKaal,
    };
