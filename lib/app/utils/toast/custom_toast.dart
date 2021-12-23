import 'package:flutter_easyloading/flutter_easyloading.dart';

class CustomToast {
  static void showToast(
    String status, {
    EasyLoadingToastPosition? toastPosition,
    Duration? duration,
    bool? dismissOnTap,
  }) {
    if (EasyLoading.isShow) EasyLoading.dismiss();
    EasyLoading.showToast(
      status,
      toastPosition: toastPosition ?? EasyLoadingToastPosition.bottom,
      duration: duration ?? const Duration(seconds: 2),
      dismissOnTap: dismissOnTap ?? false,
    );
  }
}
