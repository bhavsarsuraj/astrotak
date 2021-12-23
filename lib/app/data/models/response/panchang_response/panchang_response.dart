import 'package:freezed_annotation/freezed_annotation.dart';

import 'panchang.dart';

part 'panchang_response.freezed.dart';
part 'panchang_response.g.dart';

@freezed
class PanchangResponse with _$PanchangResponse {
  factory PanchangResponse({
    String? httpStatus,
    int? httpStatusCode,
    bool? success,
    String? message,
    String? apiName,
    Panchang? data,
  }) = _PanchangResponse;

  factory PanchangResponse.fromJson(Map<String, dynamic> json) =>
      _$PanchangResponseFromJson(json);
}
