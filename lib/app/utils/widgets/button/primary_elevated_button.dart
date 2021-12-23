import 'package:astrotak/app/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryElevatedButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? contentPadding;
  final double? borderRadius;
  final double? elevation;
  const PrimaryElevatedButton({
    Key? key,
    required this.child,
    required this.onPressed,
    this.backgroundColor,
    this.contentPadding,
    this.borderRadius,
    this.elevation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
      style: ElevatedButton.styleFrom(
        primary: backgroundColor ?? AppColors.primaryOrange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            borderRadius ?? 8.sp,
          ),
        ),
        elevation: elevation ?? 2.0,
        padding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 8.sp,
              vertical: 12.sp,
            ),
      ),
    );
  }
}
