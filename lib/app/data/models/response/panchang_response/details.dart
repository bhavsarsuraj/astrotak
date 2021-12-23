import 'package:freezed_annotation/freezed_annotation.dart';

part 'details.freezed.dart';
part 'details.g.dart';

@freezed
class Details with _$Details {
  factory Details({
    @JsonKey(name: 'tithi_number') int? tithiNumber,
    @JsonKey(name: 'tithi_name') String? tithiName,
    @JsonKey(name: 'nak_number') int? nakNumber,
    @JsonKey(name: 'nak_name') String? nakName,
    @JsonKey(name: 'yog_number') int? yogNumber,
    @JsonKey(name: 'yog_name') String? yogName,
    @JsonKey(name: 'karan_number') int? karanNumber,
    @JsonKey(name: 'karan_name') String? karanName,
    String? special,
    String? summary,
    String? deity,
    String? meaning,
    String? ruler,
  }) = _Details;

  factory Details.fromJson(Map<String, dynamic> json) =>
      _$DetailsFromJson(json);
}
