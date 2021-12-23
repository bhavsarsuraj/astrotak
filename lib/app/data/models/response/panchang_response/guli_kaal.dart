import 'package:freezed_annotation/freezed_annotation.dart';

part 'guli_kaal.freezed.dart';
part 'guli_kaal.g.dart';

@freezed
class GuliKaal with _$GuliKaal {
  factory GuliKaal({
    String? start,
    String? end,
  }) = _GuliKaal;

  factory GuliKaal.fromJson(Map<String, dynamic> json) =>
      _$GuliKaalFromJson(json);
}
