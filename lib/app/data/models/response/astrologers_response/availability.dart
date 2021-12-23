import 'package:freezed_annotation/freezed_annotation.dart';

import 'slot.dart';

part 'availability.freezed.dart';
part 'availability.g.dart';

@freezed
class Availability with _$Availability {
  factory Availability({
    List<String>? days,
    Slot? slot,
  }) = _Availability;

  factory Availability.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityFromJson(json);
}
