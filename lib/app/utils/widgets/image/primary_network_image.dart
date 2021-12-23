import 'package:astrotak/app/utils/constants/images.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PrimaryNetworkImage extends StatelessWidget {
  final String? imageUrl;
  final BoxFit? fit;
  PrimaryNetworkImage({Key? key, required this.imageUrl, this.fit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return imageUrl == null
        ? Image.asset(Images.placeholder)
        : CachedNetworkImage(
            imageUrl: imageUrl!,
            errorWidget: (context, url, error) => Image.asset(
              Images.placeholder,
            ),
            fit: fit,
            placeholder: (context, url) => Image.asset(
              Images.placeholder,
            ),
          );
  }
}
