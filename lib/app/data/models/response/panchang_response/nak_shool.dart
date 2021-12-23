import 'package:freezed_annotation/freezed_annotation.dart';

part 'nak_shool.freezed.dart';
part 'nak_shool.g.dart';

@freezed
class NakShool with _$NakShool {
  factory NakShool({
    String? direction,
    String? remedies,
  }) = _NakShool;

  factory NakShool.fromJson(Map<String, dynamic> json) =>
      _$NakShoolFromJson(json);
}
