import 'package:freezed_annotation/freezed_annotation.dart';

part 'abhijit_muhurta.freezed.dart';
part 'abhijit_muhurta.g.dart';

@freezed
class AbhijitMuhurta with _$AbhijitMuhurta {
  factory AbhijitMuhurta({
    String? start,
    String? end,
  }) = _AbhijitMuhurta;

  factory AbhijitMuhurta.fromJson(Map<String, dynamic> json) =>
      _$AbhijitMuhurtaFromJson(json);
}
