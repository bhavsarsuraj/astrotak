import 'package:astrotak/app/utils/constants/app_colors.dart';
import 'package:astrotak/app/utils/constants/images.dart';
import 'package:astrotak/app/utils/widgets/image/primary_asset_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: PrimaryAssetImage(
          imagePath: Images.logo,
          height: 44.sp,
          width: 44.sp,
        ),
        leading: Icon(
          Icons.menu,
          size: 20.sp,
          color: AppColors.primaryOrange,
        ),
        actions: [
          PrimaryAssetImage(
            imagePath: Images.profile,
            height: 20.sp,
            width: 20.sp,
            color: AppColors.primaryOrange,
          ),
          SizedBox(width: 12.sp),
        ],
        centerTitle: true,
      ),
      bottomNavigationBar: _buildBottomNavigation(),
      body: Obx(
        () => controller.tabVMs[controller.selectedTabIndex].widget,
      ),
    );
  }

  Widget _buildBottomNavigation() {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black38,
              blurRadius: 10,
            ),
          ],
        ),
        child: BottomNavigationBar(
          items: controller.tabVMs
              .map(
                (vm) => BottomNavigationBarItem(
                  icon: vm.inactiveIcon,
                  activeIcon: vm.activeIcon,
                  label: vm.title,
                ),
              )
              .toList(),
          currentIndex: controller.selectedTabIndex,
          onTap: controller.selectIndex,
          elevation: 1,
          backgroundColor: AppColors.backgroundColor,
          selectedItemColor: AppColors.primaryOrange,
          unselectedItemColor: AppColors.secondaryBlack,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
