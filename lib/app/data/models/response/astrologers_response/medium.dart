import 'package:freezed_annotation/freezed_annotation.dart';

part 'medium.freezed.dart';
part 'medium.g.dart';

@freezed
class Medium with _$Medium {
  factory Medium({
    String? imageUrl,
    int? id,
  }) = _Medium;

  factory Medium.fromJson(Map<String, dynamic> json) => _$MediumFromJson(json);
}
