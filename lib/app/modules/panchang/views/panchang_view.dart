import 'package:astrotak/app/data/models/response/location_response/datum.dart';
import 'package:astrotak/app/data/models/response/panchang_response/abhijit_muhurta.dart';
import 'package:astrotak/app/data/models/response/panchang_response/guli_kaal.dart';
import 'package:astrotak/app/data/models/response/panchang_response/hindu_maah.dart';
import 'package:astrotak/app/data/models/response/panchang_response/karan.dart';
import 'package:astrotak/app/data/models/response/panchang_response/nak_shool.dart';
import 'package:astrotak/app/data/models/response/panchang_response/nakshatra.dart';
import 'package:astrotak/app/data/models/response/panchang_response/panchang.dart';
import 'package:astrotak/app/data/models/response/panchang_response/rahukaal.dart';
import 'package:astrotak/app/data/models/response/panchang_response/tithi.dart';
import 'package:astrotak/app/data/models/response/panchang_response/yamghant_kaal.dart';
import 'package:astrotak/app/data/models/response/panchang_response/yog.dart';
import 'package:astrotak/app/data/models/tuple_model.dart';
import 'package:astrotak/app/utils/constants/app_colors.dart';
import 'package:astrotak/app/utils/constants/app_text_styles.dart';
import 'package:astrotak/app/utils/constants/enums.dart';
import 'package:astrotak/app/utils/constants/images.dart';
import 'package:astrotak/app/utils/constants/strings.dart';
import 'package:astrotak/app/utils/services/date_picker_service.dart';
import 'package:astrotak/app/utils/widgets/container/shimmer_container.dart';
import 'package:astrotak/app/utils/widgets/image/primary_asset_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';
import '../controllers/panchang_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PanchangView extends GetView<PanchangController> {
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
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: 12.sp,
        vertical: 16.sp,
      ),
      children: [
        _buildDailyPanchang(),
        _buildPanchangRequiredDetails(context),
        _buildPanchangDetails(),
      ],
    );
  }

  Widget _buildDailyPanchang() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Strings.dailyPanchang,
          style: AppTextStyles.s4(fontType: FontType.SEMI_BOLD),
        ),
        SizedBox(height: 8.sp),
        Text(
          Strings.panchangDescription,
          style: AppTextStyles.s0(
            color: AppColors.secondaryBlack,
            fontType: FontType.SEMI_BOLD,
          ),
        ),
        SizedBox(height: 12.sp),
      ],
    );
  }

  Widget _buildPanchangRequiredDetails(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryOrange.withOpacity(0.15),
        borderRadius: BorderRadius.circular(8.sp),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 20.sp),
      child: Column(
        children: [
          _buildCustomRow(
            widget1: Text(
              '${Strings.date}:',
              style: AppTextStyles.s2(
                fontType: FontType.MEDIUM,
                color: AppColors.secondaryBlack,
              ),
            ),
            widget2: GestureDetector(
              onTap: () => _didTapSelectDate(context),
              child: _buildCustomContainer(
                padding: EdgeInsets.fromLTRB(8.sp, 10.sp, 4.sp, 10.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(
                      () => Text(
                        Jiffy(controller.selectedDate).format('dd MMMM, yyyy'),
                        style: AppTextStyles.s2(
                          fontType: FontType.MEDIUM,
                          color: AppColors.secondaryBlack,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down_outlined,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 16.sp),
          _buildCustomRow(
            widget1: Text(
              '${Strings.location}:',
              style: AppTextStyles.s2(
                fontType: FontType.MEDIUM,
                color: AppColors.secondaryBlack,
              ),
            ),
            widget2: Obx(
              () => Container(
                color: Colors.white,
                padding: EdgeInsets.only(
                  left: 8.sp,
                  right: 4.sp,
                ),
                child: TypeAheadField<Datum>(
                  minCharsForSuggestions: 2,
                  suggestionsCallback: (pattern) async {
                    return await controller.getSuggestedLocation(pattern);
                  },
                  itemBuilder: (context, itemData) {
                    return Padding(
                      padding: EdgeInsets.all(8.0.sp),
                      child: Text(
                        itemData.placeName ?? '',
                      ),
                    );
                  },
                  onSuggestionSelected: (location) {
                    controller.onSelectLocation(location);
                  },
                  debounceDuration: Duration(milliseconds: 500),
                  noItemsFoundBuilder: (context) => Padding(
                    padding: EdgeInsets.all(8.0.sp),
                    child: Text(Strings.noPlacesFound),
                  ),
                  textFieldConfiguration: TextFieldConfiguration(
                    minLines: 1,
                    maxLines: 2,
                    cursorColor: AppColors.primaryOrange,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: Strings.enterLocation,
                      hintStyle: AppTextStyles.s2(
                        fontType: FontType.MEDIUM,
                        color: AppColors.secondaryBlack,
                      ),
                      suffixIcon: controller.locationQuery.trim().isNotEmpty
                          ? IconButton(
                              padding: EdgeInsets.all(0.sp),
                              onPressed: controller.onClearLocation,
                              icon: Icon(
                                Icons.clear,
                                size: 16.sp,
                              ),
                              color: Colors.black,
                            )
                          : Container(),
                      suffixIconConstraints: BoxConstraints(
                        maxHeight: 20.sp,
                        maxWidth: 24.sp,
                      ),
                    ),
                    style: AppTextStyles.s2(
                      fontType: FontType.MEDIUM,
                      color: AppColors.secondaryBlack,
                    ),
                    onChanged: controller.onChangeLocation,
                    controller: controller.locationController,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPanchangDetails() {
    return Obx(
      () => controller.isFetchingPanchangDetails
          ? _buildShimmerPanchangDetails()
          : controller.panchang.value == null
              ? Container()
              : ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    _buildPanchangTimeDetails(controller.panchang.value),
                    _buildSizedBox(),
                    _buildTithi(controller.panchang.value?.tithi),
                    _buildSizedBox(),
                    _buildNakshatra(controller.panchang.value?.nakshatra),
                    _buildSizedBox(),
                    _buildYog(controller.panchang.value?.yog),
                    _buildSizedBox(),
                    _buildKaran(controller.panchang.value?.karan),
                    _buildSizedBox(),
                    _buildHinduMaah(controller.panchang.value?.hinduMaah),
                    _buildSizedBox(),
                    _buildNakShool(controller.panchang.value?.nakShool),
                    _buildSizedBox(),
                    _buildAbhijitMuhurta(
                      controller.panchang.value?.abhijitMuhurta,
                    ),
                    _buildSizedBox(),
                    _buildRahukaal(controller.panchang.value?.rahukaal),
                    _buildSizedBox(),
                    _buildGuliKaal(controller.panchang.value?.guliKaal),
                    _buildSizedBox(),
                    _buildYamghantKaal(controller.panchang.value?.yamghantKaal),
                    _buildSizedBox(),
                    _buildExtras(),
                  ],
                ),
    );
  }

  Widget _buildTimeView({
    required String imagedPath,
    required String title,
    required String value,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PrimaryAssetImage(
          imagePath: imagedPath,
          height: 28.sp,
          width: 28.sp,
          color: Colors.indigo,
        ),
        SizedBox(width: 6.sp),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: AppTextStyles.textStyle(
                fontType: FontType.MEDIUM,
                color: Colors.indigo,
                size: 9,
              ),
            ),
            SizedBox(
              height: 2.sp,
            ),
            Text(
              value,
              style: AppTextStyles.s0(
                fontType: FontType.SEMI_BOLD,
                color: AppColors.secondaryBlack,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPanchangTimeDetails(Panchang? panchang) {
    return panchang == null
        ? Container()
        : Container(
            height: 70.sp,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 4.0,
                ),
              ],
              border: Border.all(
                color: Colors.grey.withOpacity(0.5),
                width: 0.4,
              ),
            ),
            child: ListView(
              padding: EdgeInsets.symmetric(
                horizontal: 12.sp,
                vertical: 16.sp,
              ),
              scrollDirection: Axis.horizontal,
              children: [
                _buildTimeView(
                  imagedPath: Images.sunrise,
                  title: Strings.sunrise,
                  value: panchang.sunrise ?? '',
                ),
                _buildHorizontalDivider(),
                _buildTimeView(
                  imagedPath: Images.sunset,
                  title: Strings.sunset,
                  value: panchang.sunset ?? '',
                ),
                _buildHorizontalDivider(),
                _buildTimeView(
                  imagedPath: Images.moonrise,
                  title: Strings.moonrise,
                  value: panchang.moonrise ?? '',
                ),
                _buildHorizontalDivider(),
                _buildTimeView(
                  imagedPath: Images.moonset,
                  title: Strings.moonset,
                  value: panchang.moonset ?? '',
                ),
                _buildHorizontalDivider(),
                _buildTimeView(
                  imagedPath: Images.vedicSunrise,
                  title: Strings.vedicSunrise,
                  value: panchang.vedicSunrise ?? '',
                ),
                _buildHorizontalDivider(),
                _buildTimeView(
                  imagedPath: Images.vedicSunset,
                  title: Strings.vedicSunset,
                  value: panchang.vedicSunset ?? '',
                ),
              ],
            ),
          );
  }

  Widget _buildHorizontalDivider() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.sp),
      child: Container(
        color: AppColors.secondaryBlack.withOpacity(0.2),
        width: 2.sp,
      ),
    );
  }

  Widget _buildTithi(Tithi? tithi) {
    return tithi == null
        ? Container()
        : _buildCustomTable(
            title: Strings.tithi,
            tuples: [
              TupleModel(
                Strings.tithiNumber,
                tithi.details?.tithiNumber?.toString() ?? '',
              ),
              TupleModel(
                Strings.tithiName,
                tithi.details?.tithiName ?? '',
              ),
              TupleModel(
                Strings.special,
                tithi.details?.special ?? '',
              ),
              TupleModel(
                Strings.summary,
                tithi.details?.summary ?? '',
              ),
              TupleModel(
                Strings.deity,
                tithi.details?.deity ?? '',
              ),
              TupleModel(
                Strings.endTime,
                controller.getEndTime(tithi.endTime),
              ),
            ],
          );
  }

  Widget _buildNakshatra(Nakshatra? nakshatra) {
    return nakshatra == null
        ? Container()
        : _buildCustomTable(
            title: Strings.nakshatra,
            tuples: [
              TupleModel(
                Strings.nakshatraNumber,
                nakshatra.details?.nakNumber?.toString() ?? '',
              ),
              TupleModel(
                Strings.nakshatraName,
                nakshatra.details?.nakName ?? '',
              ),
              TupleModel(
                Strings.ruler,
                nakshatra.details?.ruler ?? '',
              ),
              TupleModel(
                Strings.special,
                nakshatra.details?.special ?? '',
              ),
              TupleModel(
                Strings.summary,
                nakshatra.details?.summary ?? '',
              ),
              TupleModel(
                Strings.deity,
                nakshatra.details?.deity ?? '',
              ),
              TupleModel(
                Strings.endTime,
                controller.getEndTime(nakshatra.endTime),
              ),
            ],
          );
  }

  Widget _buildYog(Yog? yog) {
    return yog == null
        ? Container()
        : _buildCustomTable(
            title: Strings.yog,
            tuples: [
              TupleModel(
                Strings.yogNumber,
                yog.details?.yogNumber?.toString() ?? '',
              ),
              TupleModel(
                Strings.yogName,
                yog.details?.yogName ?? '',
              ),
              TupleModel(
                Strings.special,
                yog.details?.special ?? '',
              ),
              TupleModel(
                Strings.meaning,
                yog.details?.meaning ?? '',
              ),
              TupleModel(
                Strings.endTime,
                controller.getEndTime(yog.endTime),
              ),
            ],
          );
  }

  Widget _buildKaran(Karan? karan) {
    return karan == null
        ? Container()
        : _buildCustomTable(
            title: Strings.karan,
            tuples: [
              TupleModel(
                Strings.karanNumber,
                karan.details?.karanNumber?.toString() ?? '',
              ),
              TupleModel(
                Strings.karanName,
                karan.details?.karanName ?? '',
              ),
              TupleModel(
                Strings.special,
                karan.details?.special ?? '',
              ),
              TupleModel(
                Strings.deity,
                karan.details?.deity ?? '',
              ),
              TupleModel(
                Strings.endTime,
                controller.getEndTime(karan.endTime),
              ),
            ],
          );
  }

  Widget _buildHinduMaah(HinduMaah? hinduMaah) {
    return hinduMaah == null
        ? Container()
        : _buildCustomTable(
            title: Strings.hinduMaah,
            tuples: [
              TupleModel(
                Strings.adhikStatus,
                hinduMaah.adhikStatus?.toString() ?? '',
              ),
              TupleModel(
                Strings.purnimanta,
                hinduMaah.purnimanta ?? '',
              ),
              TupleModel(
                Strings.amanta,
                hinduMaah.amanta ?? '',
              ),
              TupleModel(
                Strings.amantaId,
                hinduMaah.amantaId?.toString() ?? '',
              ),
              TupleModel(
                Strings.purnimantaId,
                hinduMaah.purnimantaId?.toString() ?? '',
              ),
            ],
          );
  }

  Widget _buildNakShool(NakShool? nakShool) {
    return nakShool == null
        ? Container()
        : _buildCustomTable(
            title: Strings.nakShool,
            tuples: [
              TupleModel(
                Strings.direction,
                nakShool.direction ?? '',
              ),
              TupleModel(
                Strings.remedies,
                nakShool.remedies ?? '',
              ),
            ],
          );
  }

  Widget _buildAbhijitMuhurta(AbhijitMuhurta? abhijitMuhurta) {
    return abhijitMuhurta == null
        ? Container()
        : _buildCustomTable(
            title: Strings.abhijitMuhurta,
            tuples: [
              TupleModel(
                Strings.start,
                abhijitMuhurta.start ?? '',
              ),
              TupleModel(
                Strings.end,
                abhijitMuhurta.end ?? '',
              ),
            ],
          );
  }

  Widget _buildRahukaal(Rahukaal? rahukaal) {
    return rahukaal == null
        ? Container()
        : _buildCustomTable(
            title: Strings.rahukaal,
            tuples: [
              TupleModel(
                Strings.start,
                rahukaal.start ?? '',
              ),
              TupleModel(
                Strings.end,
                rahukaal.end ?? '',
              ),
            ],
          );
  }

  Widget _buildGuliKaal(GuliKaal? guliKaal) {
    return guliKaal == null
        ? Container()
        : _buildCustomTable(
            title: Strings.guliKaal,
            tuples: [
              TupleModel(
                Strings.start,
                guliKaal.start ?? '',
              ),
              TupleModel(
                Strings.end,
                guliKaal.end ?? '',
              ),
            ],
          );
  }

  Widget _buildYamghantKaal(YamghantKaal? yamghantKaal) {
    return yamghantKaal == null
        ? Container()
        : _buildCustomTable(
            title: Strings.yamghantKaal,
            tuples: [
              TupleModel(
                Strings.start,
                yamghantKaal.start ?? '',
              ),
              TupleModel(
                Strings.end,
                yamghantKaal.end ?? '',
              ),
            ],
          );
  }

  Widget _buildExtras() {
    return _buildCustomTable(
      title: Strings.otherDetails,
      tuples: [
        TupleModel(
          Strings.paksha,
          controller.panchang.value?.paksha ?? '',
        ),
        TupleModel(
          Strings.ritu,
          controller.panchang.value?.ritu ?? '',
        ),
        TupleModel(
          Strings.sunSign,
          controller.panchang.value?.sunSign ?? '',
        ),
        TupleModel(
          Strings.moonSign,
          controller.panchang.value?.moonSign ?? '',
        ),
        TupleModel(
          Strings.ayana,
          controller.panchang.value?.ayana ?? '',
        ),
        TupleModel(
          Strings.panchangYog,
          controller.panchang.value?.panchangYog ?? '',
        ),
        TupleModel(
          Strings.vikramSamvat,
          controller.panchang.value?.vikramSamvat?.toString() ?? '',
        ),
        TupleModel(
          Strings.shakaSamvat,
          controller.panchang.value?.shakaSamvat?.toString() ?? '',
        ),
        TupleModel(
          Strings.vikramSamvatName,
          controller.panchang.value?.vkramSamvatName ?? '',
        ),
        TupleModel(
          Strings.shakaSamvatName,
          controller.panchang.value?.shakaSamvatName ?? '',
        ),
        TupleModel(
          Strings.dishaShool,
          controller.panchang.value?.dishaShool ?? '',
        ),
        TupleModel(
          Strings.dishaShoolRemedies,
          controller.panchang.value?.dishaShoolRemedies ?? '',
        ),
        TupleModel(
          Strings.moonNivas,
          controller.panchang.value?.moonNivas ?? '',
        ),
      ],
    );
  }

  Widget _buildCustomRow({
    required Widget widget1,
    required Widget widget2,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(flex: 1, child: Center(child: widget1)),
        SizedBox(width: 6.sp),
        Expanded(flex: 3, child: Center(child: widget2)),
      ],
    );
  }

  Widget _buildCustomTable({
    String? title,
    required List<TupleModel<String, String>> tuples,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) ...[
          Text(
            title,
            style: AppTextStyles.s3(
              fontType: FontType.SEMI_BOLD,
              color: AppColors.primaryBlack,
            ),
          ),
          SizedBox(height: 8.sp),
        ],
        ...tuples
            .map(
              (tuple) => Padding(
                padding: EdgeInsets.symmetric(vertical: 6.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        tuple.item1,
                        style: AppTextStyles.s1(
                          fontType: FontType.MEDIUM,
                          color: AppColors.secondaryBlack,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.sp),
                    Expanded(
                      flex: 3,
                      child: Text(
                        tuple.item2,
                        style: AppTextStyles.s1(
                          fontType: FontType.REGULAR,
                          color: AppColors.secondaryBlack,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ],
    );
  }

  Widget _buildCustomContainer({
    required Widget child,
    required EdgeInsets padding,
  }) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: child,
    );
  }

  Widget _buildShimmerPanchangDetails() {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        _buildShimmerPanchangTimeDetails(),
        _buildSizedBox(),
        ...List.generate(
          5,
          (index) => Padding(
            padding: EdgeInsets.symmetric(vertical: 16.sp),
            child: _buildShimmerTable(),
          ),
        ),
      ],
    );
  }

  Widget _buildShimmerPanchangTimeDetails() {
    return Container(
      height: 70.sp,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 4.0,
          ),
        ],
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
          width: 0.4,
        ),
      ),
      child: ListView.separated(
        padding: EdgeInsets.symmetric(
          horizontal: 12.sp,
          vertical: 16.sp,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => _buildShimmerTimeView(),
        separatorBuilder: (context, index) => _buildHorizontalDivider(),
        itemCount: 6,
      ),
    );
  }

  Widget _buildShimmerTimeView() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShimmerContainer(
          height: 28.sp,
          width: 28.sp,
        ),
        SizedBox(width: 6.sp),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ShimmerContainer(
              height: 10,
              width: 50,
            ),
            SizedBox(
              height: 2.sp,
            ),
            ShimmerContainer(
              height: 14,
              width: 80,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildShimmerTable() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShimmerContainer(
          height: 20,
          width: 60,
        ),
        SizedBox(height: 12.sp),
        _buildShimmerCustomRow(width1: 100, width2: 40),
        SizedBox(height: 8.sp),
        _buildShimmerCustomRow(width1: 80, width2: 120),
        SizedBox(height: 8.sp),
        _buildShimmerCustomRow(width1: 60, width2: 100),
        SizedBox(height: 8.sp),
        _buildShimmerCustomRow(
          width1: 80.sp,
          width2: 160.sp,
          height2: 100.sp,
        ),
        SizedBox(height: 8.sp),
        _buildShimmerCustomRow(width1: 40, width2: 60),
        SizedBox(height: 8.sp),
        _buildShimmerCustomRow(width1: 40, width2: 120),
      ],
    );
  }

  Widget _buildShimmerCustomRow({
    required double width1,
    required double width2,
    double? height1,
    double? height2,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: 2,
          child: ShimmerContainer(
            height: height1 ?? 14.sp,
            width: width1,
          ),
        ),
        SizedBox(width: 8.sp),
        Flexible(
          flex: 3,
          child: Align(
            alignment: Alignment.topLeft,
            child: ShimmerContainer(
              height: height2 ?? 14.sp,
              width: width2,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSizedBox({double? height, double? width}) {
    return SizedBox(
      height: height ?? 12.sp,
      width: width ?? 0.sp,
    );
  }

  void _didTapSelectDate(BuildContext context) async {
    final date = await DatePickerServie.pickDate(
      context: context,
      initialDate: controller.selectedDate,
      firstDate: DateTime(1970, 1, 1),
      lastDate: DateTime(2099, 12, 31),
    );

    if (date != null) {
      controller.onSelectDate(date);
    }
  }
}
