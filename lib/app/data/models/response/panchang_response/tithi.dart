import 'package:freezed_annotation/freezed_annotation.dart';

import 'details.dart';
import 'end_time.dart';

part 'tithi.freezed.dart';
part 'tithi.g.dart';

@freezed
class Tithi with _$Tithi {
  factory Tithi({
    Details? details,
    @JsonKey(name: 'end_time') EndTime? endTime,
    @JsonKey(name: 'end_time_ms') int? endTimeMs,
  }) = _Tithi;

  factory Tithi.fromJson(Map<String, dynamic> json) => _$TithiFromJson(json);
}
