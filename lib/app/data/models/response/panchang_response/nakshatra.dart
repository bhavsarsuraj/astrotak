import 'package:freezed_annotation/freezed_annotation.dart';

import 'details.dart';
import 'end_time.dart';

part 'nakshatra.freezed.dart';
part 'nakshatra.g.dart';

@freezed
class Nakshatra with _$Nakshatra {
  factory Nakshatra({
    Details? details,
    @JsonKey(name: 'end_time') EndTime? endTime,
    @JsonKey(name: 'end_time_ms') int? endTimeMs,
  }) = _Nakshatra;

  factory Nakshatra.fromJson(Map<String, dynamic> json) =>
      _$NakshatraFromJson(json);
}
