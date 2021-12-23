import 'package:freezed_annotation/freezed_annotation.dart';

import 'astrologer.dart';

part 'astrologers_response.freezed.dart';
part 'astrologers_response.g.dart';

@freezed
class AstrologersResponse with _$AstrologersResponse {
  factory AstrologersResponse({
    String? httpStatus,
    int? httpStatusCode,
    bool? success,
    String? message,
    String? apiName,
    List<Astrologer>? data,
  }) = _AstrologersResponse;

  factory AstrologersResponse.fromJson(Map<String, dynamic> json) =>
      _$AstrologersResponseFromJson(json);
}
