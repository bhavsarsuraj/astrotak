import 'package:freezed_annotation/freezed_annotation.dart';

part 'large.freezed.dart';
part 'large.g.dart';

@freezed
class Large with _$Large {
  factory Large({
    String? imageUrl,
    int? id,
  }) = _Large;

  factory Large.fromJson(Map<String, dynamic> json) => _$LargeFromJson(json);
}
