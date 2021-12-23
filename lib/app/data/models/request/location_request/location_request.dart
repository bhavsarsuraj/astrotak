import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_request.freezed.dart';
part 'location_request.g.dart';

@freezed
class LocationRequest with _$LocationRequest {
  factory LocationRequest({
    String? inputPlace,
  }) = _LocationRequest;

  factory LocationRequest.fromJson(Map<String, dynamic> json) =>
      _$LocationRequestFromJson(json);
}
