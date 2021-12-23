import 'package:astrotak/app/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class DatePickerServie {
  static Future<DateTime?> pickDate({
    required BuildContext context,
    required DateTime initialDate,
    required DateTime firstDate,
    required DateTime lastDate,
  }) async {
    final date = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme:
                ColorScheme.light().copyWith(primary: AppColors.primaryOrange),
          ),
          child: child!,
        );
      },
    );
    return date;
  }
}
