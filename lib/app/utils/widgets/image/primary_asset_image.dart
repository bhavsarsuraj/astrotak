import 'package:astrotak/app/utils/constants/images.dart';
import 'package:flutter/material.dart';

class PrimaryAssetImage extends StatelessWidget {
  final String imagePath;
  final BoxFit? fit;
  final double? height;
  final double? width;
  final Color? color;

  PrimaryAssetImage({
    Key? key,
    required this.imagePath,
    this.fit,
    this.height,
    this.width,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      fit: fit,
      height: height,
      width: width,
      color: color,
      errorBuilder: (context, error, stackTrace) => Image.asset(
        Images.placeholder,
      ),
    );
  }
}
