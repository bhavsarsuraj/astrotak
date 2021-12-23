import 'package:freezed_annotation/freezed_annotation.dart';

part 'yamghant_kaal.freezed.dart';
part 'yamghant_kaal.g.dart';

@freezed
class YamghantKaal with _$YamghantKaal {
  factory YamghantKaal({
    String? start,
    String? end,
  }) = _YamghantKaal;

  factory YamghantKaal.fromJson(Map<String, dynamic> json) =>
      _$YamghantKaalFromJson(json);
}
