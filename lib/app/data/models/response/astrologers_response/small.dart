import 'package:freezed_annotation/freezed_annotation.dart';

part 'small.freezed.dart';
part 'small.g.dart';

@freezed
class Small with _$Small {
  factory Small({
    dynamic imageUrl,
    dynamic id,
  }) = _Small;

  factory Small.fromJson(Map<String, dynamic> json) => _$SmallFromJson(json);
}
