import 'package:astrotak/app/data/models/response/astrologers_response/astrologer.dart';
import 'package:astrotak/app/utils/constants/app_colors.dart';
import 'package:astrotak/app/utils/constants/app_text_styles.dart';
import 'package:astrotak/app/utils/constants/enums.dart';
import 'package:astrotak/app/utils/constants/images.dart';
import 'package:astrotak/app/utils/constants/strings.dart';
import 'package:astrotak/app/utils/widgets/astrologer/astrologer_card.dart';
import 'package:astrotak/app/utils/widgets/astrologer/shimmer_astrologer_card.dart';
import 'package:astrotak/app/utils/widgets/button/primary_elevated_button.dart';
import 'package:astrotak/app/utils/widgets/chip/primary_chip.dart';
import 'package:astrotak/app/utils/widgets/image/primary_asset_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Obx(
      () => !controller.isFetchingAstrologers && controller.astrologers.isEmpty
          ? _buildEmptyView(
              Strings.noAstrologersFound,
              isEnableTryAgain: true,
            )
          : Column(
              children: [
                _buildHeading(context),
                _buildSearchBar(),
                _buildAstrologers(),
              ],
            ),
    );
  }

  Widget _buildAstrologers() {
    return Expanded(
      child: RefreshIndicator(
        color: AppColors.primaryOrange,
        child: controller.isFetchingAstrologers
            ? _buildShimmerList()
            : controller.filteredList.isEmpty
                ? _buildEmptyView(Strings.noAstrologersFound)
                : controller.isVisibleSearchField
                    ? (controller.query.isNotEmpty
                        ? (controller.searchedList.isNotEmpty
                            ? _buildAstrologersList(controller.searchedList)
                            : _buildEmptyView(
                                Strings.noAstrologersFound,
                              ))
                        : _buildAstrologersList(controller.filteredList))
                    : _buildAstrologersList(controller.filteredList),
        onRefresh: controller.onRefresh,
      ),
    );
  }

  Widget _buildAstrologersList(List<Astrologer> astrologers) {
    return ListView.separated(
      padding: EdgeInsets.all(12.sp),
      itemBuilder: (context, index) {
        return AstrologerCard(astrologer: astrologers[index]);
      },
      separatorBuilder: (context, index) => Divider(height: 16.sp),
      itemCount: astrologers.length,
    );
  }

  Widget _buildHeading(BuildContext context) {
    return controller.astrologers.isEmpty
        ? Container()
        : Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: const Offset(4.0, 2.0),
                  blurRadius: 10.0,
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: const Offset(0.0, 0.0),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12.sp,
                vertical: 8.sp,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      Strings.talkToAstrologer,
                      style: AppTextStyles.s3(fontType: FontType.SEMI_BOLD),
                    ),
                  ),
                  SizedBox(width: 10.sp),
                  GestureDetector(
                    onTap: () => controller.didTapSearch(context),
                    child: PrimaryAssetImage(
                      imagePath: Images.search,
                      height: 20.sp,
                      width: 20.sp,
                    ),
                  ),
                  SizedBox(width: 16.sp),
                  GestureDetector(
                    onTap: _didTapFilter,
                    child: PrimaryAssetImage(
                      imagePath: Images.filter,
                      height: 20.sp,
                      width: 20.sp,
                    ),
                  ),
                  SizedBox(width: 16.sp),
                  PopupMenuButton(
                    itemBuilder: (context) {
                      return controller.sortingOrders
                          .map(
                            (order) => PopupMenuItem(
                              child: Row(
                                children: [
                                  Obx(
                                    () => Padding(
                                      padding: EdgeInsets.only(top: 4.sp),
                                      child: Radio(
                                        activeColor: AppColors.primaryOrange,
                                        value: order,
                                        groupValue:
                                            controller.selectedSortedOrder,
                                        onChanged: controller.onChangeSortBy,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      controller
                                              .getStringFromAstrologerSortingOrder(
                                                  order) ??
                                          '',
                                      style: AppTextStyles.s2(
                                        color: Colors.black,
                                        fontType: FontType.MEDIUM,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              value: order,
                              onTap: () => controller.onChangeSortBy(order),
                            ),
                          )
                          .toList();
                    },
                    offset: Offset(0, 28.sp),
                    child: PrimaryAssetImage(
                      imagePath: Images.sort,
                      height: 20.sp,
                      width: 20.sp,
                    ),
                  ),
                ],
              ),
            ),
          );
  }

  Widget _buildSearchBar() {
    return AnimatedContainer(
      duration: Duration(milliseconds: 250),
      curve: Curves.easeOut,
      height: controller.isVisibleSearchField ? 44.sp : 0,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius: BorderRadius.circular(6.sp),
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 4.sp)]),
      margin: EdgeInsets.only(
        left: 12.sp,
        top: 8.sp,
        right: 12.sp,
      ),
      child: TextField(
        onChanged: controller.onChangeQuery,
        controller: controller.searchController,
        autofocus: false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.sp,
            vertical: 12.sp,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: AppColors.primaryOrange,
          ),
          suffixIcon: controller.query.trim().isNotEmpty
              ? IconButton(
                  padding: EdgeInsets.all(0.sp),
                  onPressed: controller.clearQuery,
                  icon: Icon(
                    Icons.clear,
                    color: AppColors.primaryOrange,
                  ),
                )
              : Container(),
          suffixIconConstraints: BoxConstraints(
            maxHeight: 20.sp,
            maxWidth: 32.sp,
          ),
          border: InputBorder.none,
          hintText: Strings.searchAstrologer,
          hintStyle: AppTextStyles.s1(
            color: AppColors.secondaryBlack,
          ),
        ),
        cursorColor: AppColors.primaryOrange,
      ),
    );
  }

  Widget _buildEmptyView(
    String message, {
    TextStyle? textStyle,
    bool? isEnableTryAgain,
  }) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              style: textStyle ?? AppTextStyles.s3(fontType: FontType.MEDIUM),
            ),
            if (isEnableTryAgain ?? false) ...[
              SizedBox(height: 20.sp),
              PrimaryElevatedButton(
                child: Text(Strings.tryAgain),
                onPressed: controller.onRefresh,
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildFilterTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: Get.back,
          icon: Icon(
            Icons.clear,
            size: 20.sp,
          ),
        ),
        Text(
          Strings.filters,
          style: AppTextStyles.s4(
            color: Colors.black,
            fontType: FontType.SEMI_BOLD,
          ),
        ),
        IconButton(
          onPressed: () {
            Get.back();
            controller.applyFilters();
          },
          icon: Icon(
            Icons.check,
            size: 20.sp,
          ),
        ),
      ],
    );
  }

  Widget _buildShimmerList() {
    return ListView.separated(
      padding: EdgeInsets.all(12.sp),
      itemBuilder: (context, index) {
        return ShimmerAstrologyCard();
      },
      separatorBuilder: (context, index) => Divider(height: 16.sp),
      itemCount: 20,
    );
  }

  Widget _buildAstrologySkills() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Strings.skills,
          style: AppTextStyles.s3(fontType: FontType.SEMI_BOLD),
        ),
        SizedBox(
          height: 12.sp,
        ),
        Obx(
          () => _buildWrap(
            controller.astrologySkills
                .map(
                  (skill) => GestureDetector(
                    onTap: () => controller.onSelectSkill(skill),
                    child: PrimaryChip(
                      label: skill,
                      isSelected: controller.isSkillSelected(skill),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildAstrologerLanguages() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Strings.languages,
          style: AppTextStyles.s3(fontType: FontType.SEMI_BOLD),
        ),
        SizedBox(
          height: 12.sp,
        ),
        Obx(
          () => _buildWrap(
            controller.languages
                .map(
                  (language) => GestureDetector(
                    onTap: () => controller.onSelectLanguage(language),
                    child: PrimaryChip(
                      label: language,
                      isSelected: controller.isLanguageSelected(language),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildWrap(List<Widget> widgets) {
    return Wrap(
      children: widgets,
      spacing: 6.sp,
    );
  }

  Widget _buildFiltersView() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.sp),
          topRight: Radius.circular(20.sp),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 12.sp),
            _buildFilterTitle(),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.sp,
                  vertical: 8.sp,
                ),
                children: [
                  _buildAstrologySkills(),
                  SizedBox(height: 12.sp),
                  _buildAstrologerLanguages(),
                  SizedBox(height: 12.sp),
                ],
              ),
            ),
            _buildClearFiltersButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildClearFiltersButton() {
    return Obx(
      () => controller.tempSelectedLanguages.isNotEmpty ||
              controller.tempSelectedSkills.isNotEmpty
          ? SafeArea(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 6.sp,
                  bottom: 10.sp,
                ),
                child: PrimaryElevatedButton(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20.sp,
                    vertical: 12.sp,
                  ),
                  child: Text(
                    Strings.clearAllFilters,
                  ),
                  onPressed: () {
                    Get.back();
                    controller.resetAllFilters();
                  },
                ),
              ),
            )
          : Container(),
    );
  }

  void _didTapFilter() {
    controller.configureFilters();
    Get.bottomSheet(
      _buildFiltersView(),
    );
  }
}
