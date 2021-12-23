import 'package:astrotak/app/app_controller.dart';
import 'package:astrotak/app/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'app/utils/constants/strings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ScreenUtilInit(
      builder: () => GetMaterialApp(
        title: Strings.appTitle,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        onInit: () => Get.put(AppController()),
        debugShowCheckedModeBanner: false,
        builder: EasyLoading.init(),
        themeMode: ThemeMode.light,
        theme: ThemeData(
          fontFamily: 'Montserrat',
          primaryColor: AppColors.primaryOrange,
          colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: AppColors.primaryOrange,
          ),
        ),
      ),
    ),
  );
}
