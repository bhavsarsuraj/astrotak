import 'dart:async';
import 'package:app_settings/app_settings.dart';
import 'package:astrotak/app/utils/constants/app_text_styles.dart';
import 'package:astrotak/app/utils/constants/enums.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'utils/constants/images.dart';
import 'utils/constants/strings.dart';
import 'utils/widgets/image/primary_asset_image.dart';

class AppController extends GetxController {
  late StreamSubscription subscription;

  @override
  void onInit() {
    super.onInit();
    checkConnection();
    subscription = Connectivity().onConnectivityChanged.listen((result) {
      handleConnection(result);
    });
  }

  void checkConnection() async {
    final result = await Connectivity().checkConnectivity();
    handleConnection(result);
  }

  void handleConnection(ConnectivityResult result) {
    if (result == ConnectivityResult.none) {
      Get.bottomSheet(
        WillPopScope(
          onWillPop: () {
            return Future.value(false);
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(28.sp),
                topRight: Radius.circular(28.sp),
              ),
              color: Colors.white,
            ),
            padding: EdgeInsets.symmetric(
              vertical: 12.sp,
              horizontal: 16.sp,
            ),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    child: PrimaryAssetImage(
                      imagePath: Images.noInternet,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Divider(),
                  TextButton(
                    onPressed: () {
                      AppSettings.openWIFISettings();
                    },
                    child: Text(
                      Strings.openSettings,
                      style: AppTextStyles.s4(
                        fontType: FontType.SEMI_BOLD,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        ignoreSafeArea: false,
        enableDrag: false,
        isDismissible: false,
        isScrollControlled: true,
      );
    } else {
      // Internet
      if (Get.isBottomSheetOpen ?? false) Get.back();
    }
  }

  @override
  void onClose() {
    subscription.cancel();
    super.onClose();
  }
}
