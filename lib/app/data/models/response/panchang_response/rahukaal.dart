import 'package:freezed_annotation/freezed_annotation.dart';

part 'rahukaal.freezed.dart';
part 'rahukaal.g.dart';

@freezed
class Rahukaal with _$Rahukaal {
  factory Rahukaal({
    String? start,
    String? end,
  }) = _Rahukaal;

  factory Rahukaal.fromJson(Map<String, dynamic> json) =>
      _$RahukaalFromJson(json);
}
