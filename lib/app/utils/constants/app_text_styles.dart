import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'enums.dart';

class AppTextStyles {
  static Color _primaryColor = Colors.black;

  static FontWeight fontType(FontType? fontType) {
    switch (fontType) {
      case FontType.BOLD:
        return FontWeight.w700;
      case FontType.SEMI_BOLD:
        return FontWeight.w600;
      case FontType.MEDIUM:
        return FontWeight.w500;
      case FontType.REGULAR:
        return FontWeight.w400;
      case FontType.LIGHT:
        return FontWeight.w300;
      default:
        return FontWeight.w400;
    }
  }

  static TextStyle textStyle({
    FontType? fontType,
    Color? color,
    double? size,
  }) {
    return TextStyle(
      color: color ?? _primaryColor,
      fontSize: size,
      fontWeight: AppTextStyles.fontType(fontType),
      height: 1.5,
    );
  }

  static TextStyle s0({Color? color, FontType? fontType}) =>
      AppTextStyles.textStyle(
        size: 10.sp,
        color: color ?? _primaryColor,
        fontType: fontType,
      );
  static TextStyle s1({Color? color, FontType? fontType}) =>
      AppTextStyles.textStyle(
        size: 12.sp,
        color: color ?? _primaryColor,
        fontType: fontType,
      );

  static TextStyle s2({Color? color, FontType? fontType}) =>
      AppTextStyles.textStyle(
        size: 13.sp,
        color: color ?? _primaryColor,
        fontType: fontType,
      );

  static TextStyle s3({Color? color, FontType? fontType}) =>
      AppTextStyles.textStyle(
        size: 15.sp,
        color: color ?? _primaryColor,
        fontType: fontType,
      );
  static TextStyle s4({Color? color, FontType? fontType}) =>
      AppTextStyles.textStyle(
        size: 16.sp,
        color: color ?? _primaryColor,
        fontType: fontType,
      );

  static TextStyle s5({Color? color, FontType? fontType}) =>
      AppTextStyles.textStyle(
        size: 18.sp,
        color: color ?? _primaryColor,
        fontType: fontType,
      );

  static TextStyle s6({Color? color, FontType? fontType}) =>
      AppTextStyles.textStyle(
        size: 20.sp,
        color: color ?? _primaryColor,
        fontType: fontType,
      );

  static TextStyle s7({Color? color, FontType? fontType}) =>
      AppTextStyles.textStyle(
        size: 22.sp,
        color: color ?? _primaryColor,
        fontType: fontType,
      );
}
