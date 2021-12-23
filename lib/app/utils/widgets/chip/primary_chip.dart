import 'package:astrotak/app/utils/constants/app_colors.dart';
import 'package:astrotak/app/utils/constants/app_text_styles.dart';
import 'package:astrotak/app/utils/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  const PrimaryChip({
    Key? key,
    required this.label,
    required this.isSelected,
    this.textStyle,
    this.padding,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isSelected) ...[
            Icon(
              Icons.check,
              color: Colors.white,
              size: 18.sp,
            ),
            SizedBox(width: 4.sp),
          ],
          Text(
            label,
            style: textStyle ??
                AppTextStyles.s1(
                  fontType: isSelected ? FontType.SEMI_BOLD : FontType.MEDIUM,
                  color: isSelected ? Colors.white : Colors.black,
                ),
          )
        ],
      ),
      padding: padding ??
          EdgeInsets.symmetric(
            horizontal: 6.sp,
            vertical: 8.sp,
          ),
      backgroundColor: backgroundColor ??
          (isSelected ? AppColors.primaryOrange : AppColors.backgroundColor),
    );
  }
}
