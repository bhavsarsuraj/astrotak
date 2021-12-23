import 'package:freezed_annotation/freezed_annotation.dart';

import 'details.dart';
import 'end_time.dart';

part 'karan.freezed.dart';
part 'karan.g.dart';

@freezed
class Karan with _$Karan {
  factory Karan({
    Details? details,
    @JsonKey(name: 'end_time') EndTime? endTime,
    @JsonKey(name: 'end_time_ms') int? endTimeMs,
  }) = _Karan;

  factory Karan.fromJson(Map<String, dynamic> json) => _$KaranFromJson(json);
}
