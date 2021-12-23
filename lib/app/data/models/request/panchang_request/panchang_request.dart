import 'package:freezed_annotation/freezed_annotation.dart';

part 'panchang_request.freezed.dart';
part 'panchang_request.g.dart';

@freezed
class PanchangRequest with _$PanchangRequest {
  factory PanchangRequest({
    int? day,
    int? month,
    int? year,
    String? placeId,
  }) = _PanchangRequest;

  factory PanchangRequest.fromJson(Map<String, dynamic> json) =>
      _$PanchangRequestFromJson(json);
}
