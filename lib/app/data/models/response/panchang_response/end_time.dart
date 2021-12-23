import 'package:freezed_annotation/freezed_annotation.dart';

part 'end_time.freezed.dart';
part 'end_time.g.dart';

@freezed
class EndTime with _$EndTime {
  factory EndTime({
    int? hour,
    int? minute,
    int? second,
  }) = _EndTime;

  factory EndTime.fromJson(Map<String, dynamic> json) =>
      _$EndTimeFromJson(json);
}
