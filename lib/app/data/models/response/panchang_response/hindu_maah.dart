import 'package:freezed_annotation/freezed_annotation.dart';

part 'hindu_maah.freezed.dart';
part 'hindu_maah.g.dart';

@freezed
class HinduMaah with _$HinduMaah {
  factory HinduMaah({
    @JsonKey(name: 'adhik_status') bool? adhikStatus,
    String? purnimanta,
    String? amanta,
    @JsonKey(name: 'amanta_id') int? amantaId,
    @JsonKey(name: 'purnimanta_id') int? purnimantaId,
  }) = _HinduMaah;

  factory HinduMaah.fromJson(Map<String, dynamic> json) =>
      _$HinduMaahFromJson(json);
}
