import 'package:freezed_annotation/freezed_annotation.dart';

import 'abhijit_muhurta.dart';
import 'guli_kaal.dart';
import 'hindu_maah.dart';
import 'karan.dart';
import 'nak_shool.dart';
import 'nakshatra.dart';
import 'rahukaal.dart';
import 'tithi.dart';
import 'yamghant_kaal.dart';
import 'yog.dart';

part 'panchang.freezed.dart';
part 'panchang.g.dart';

@freezed
class Panchang with _$Panchang {
  factory Panchang({
    String? day,
    String? sunrise,
    String? sunset,
    String? moonrise,
    String? moonset,
    @JsonKey(name: 'vedic_sunrise') String? vedicSunrise,
    @JsonKey(name: 'vedic_sunset') String? vedicSunset,
    Tithi? tithi,
    Nakshatra? nakshatra,
    Yog? yog,
    Karan? karan,
    @JsonKey(name: 'hindu_maah') HinduMaah? hinduMaah,
    String? paksha,
    String? ritu,
    @JsonKey(name: 'sun_sign') String? sunSign,
    @JsonKey(name: 'moon_sign') String? moonSign,
    String? ayana,
    @JsonKey(name: 'panchang_yog') String? panchangYog,
    @JsonKey(name: 'vikram_samvat') int? vikramSamvat,
    @JsonKey(name: 'shaka_samvat') int? shakaSamvat,
    @JsonKey(name: 'vkram_samvat_name') String? vkramSamvatName,
    @JsonKey(name: 'shaka_samvat_name') String? shakaSamvatName,
    @JsonKey(name: 'disha_shool') String? dishaShool,
    @JsonKey(name: 'disha_shool_remedies') String? dishaShoolRemedies,
    @JsonKey(name: 'nak_shool') NakShool? nakShool,
    @JsonKey(name: 'moon_nivas') String? moonNivas,
    @JsonKey(name: 'abhijit_muhurta') AbhijitMuhurta? abhijitMuhurta,
    Rahukaal? rahukaal,
    GuliKaal? guliKaal,
    @JsonKey(name: 'yamghant_kaal') YamghantKaal? yamghantKaal,
  }) = _Panchang;

  factory Panchang.fromJson(Map<String, dynamic> json) =>
      _$PanchangFromJson(json);
}
