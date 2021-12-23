import 'package:astrotak/app/modules/home/views/home_view.dart';
import 'package:astrotak/app/modules/panchang/views/panchang_view.dart';
import 'package:astrotak/app/utils/constants/app_colors.dart';
import 'package:astrotak/app/utils/constants/images.dart';
import 'package:astrotak/app/utils/constants/strings.dart';
import 'package:astrotak/app/utils/widgets/image/primary_asset_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabViewModel {
  final String title;
  final Widget widget;
  final Widget activeIcon;
  final Widget inactiveIcon;

  TabViewModel({
    required this.title,
    required this.widget,
    required this.activeIcon,
    required this.inactiveIcon,
  });
}

class DashboardController extends GetxController {
  final _selectedTabIndex = 0.obs;
  get selectedTabIndex => this._selectedTabIndex.value;
  set selectedTabIndex(value) => this._selectedTabIndex.value = value;

  List<TabViewModel> tabVMs = [];

  @override
  void onInit() {
    super.onInit();
    setupTabs();
  }

  void setupTabs() {
    tabVMs = [
      TabViewModel(
        title: Strings.home.tr,
        widget: HomeView(),
        activeIcon: PrimaryAssetImage(
          imagePath: Images.home,
          height: 16.sp,
          width: 16.sp,
          color: AppColors.primaryOrange,
        ),
        inactiveIcon: PrimaryAssetImage(
          imagePath: Images.home,
          height: 16.sp,
          width: 16.sp,
          color: AppColors.secondaryBlack,
        ),
      ),
      TabViewModel(
        title: Strings.panchang,
        widget: PanchangView(),
        activeIcon: Icon(
          Icons.calendar_today_outlined,
          color: AppColors.primaryOrange,
          size: 16.sp,
        ),
        inactiveIcon: Icon(
          Icons.calendar_today_outlined,
          color: AppColors.secondaryBlack,
          size: 16.sp,
        ),
      ),
    ];
  }

  void selectIndex(int index) {
    selectedTabIndex = index;
  }
}
