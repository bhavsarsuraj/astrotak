import 'package:freezed_annotation/freezed_annotation.dart';

import 'large.dart';
import 'medium.dart';
import 'small.dart';

part 'images.freezed.dart';
part 'images.g.dart';

@freezed
class Images with _$Images {
  factory Images({
    Small? small,
    Large? large,
    Medium? medium,
  }) = _Images;

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
}
