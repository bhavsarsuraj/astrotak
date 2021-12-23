import 'package:freezed_annotation/freezed_annotation.dart';

import 'details.dart';
import 'end_time.dart';

part 'yog.freezed.dart';
part 'yog.g.dart';

@freezed
class Yog with _$Yog {
  factory Yog({
    Details? details,
    @JsonKey(name: 'end_time') EndTime? endTime,
    @JsonKey(name: 'end_time_ms') int? endTimeMs,
  }) = _Yog;

  factory Yog.fromJson(Map<String, dynamic> json) => _$YogFromJson(json);
}
