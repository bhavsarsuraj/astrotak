import 'package:astrotak/app/data/models/response/astrologers_response/astrologer.dart';
import 'package:astrotak/app/utils/constants/app_colors.dart';
import 'package:astrotak/app/utils/constants/app_text_styles.dart';
import 'package:astrotak/app/utils/constants/enums.dart';
import 'package:astrotak/app/utils/constants/images.dart';
import 'package:astrotak/app/utils/constants/strings.dart';
import 'package:astrotak/app/utils/widgets/button/primary_elevated_button.dart';
import 'package:astrotak/app/utils/widgets/image/primary_asset_image.dart';
import 'package:astrotak/app/utils/widgets/image/primary_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AstrologerCard extends StatelessWidget {
  final Astrologer astrologer;
  const AstrologerCard({Key? key, required this.astrologer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2.sp),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.sp),
            child: SizedBox(
              height: 80.sp,
              width: 90.sp,
              child: PrimaryNetworkImage(
                imageUrl: _imageUrl,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        SizedBox(width: 8.sp),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _name,
                style: AppTextStyles.s2(fontType: FontType.BOLD),
              ),
              _buildDetailsRow(
                imagePath: Images.skills,
                text: _skills,
              ),
              _buildDetailsRow(
                imagePath: Images.language,
                text: _languages,
              ),
              _buildDetailsRow(
                imagePath: Images.charge,
                text: _chargePerMin,
                textStyle: AppTextStyles.s1(fontType: FontType.BOLD),
              ),
              SizedBox(height: 4.sp),
              _buildCallButton(),
            ],
          ),
        ),
        SizedBox(width: 8.sp),
        Expanded(
          flex: 1,
          child: Text(
            _experience,
            style: AppTextStyles.s2(
              color: AppColors.secondaryBlack,
              fontType: FontType.MEDIUM,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCallButton() {
    return Padding(
      padding: EdgeInsets.only(left: 20.sp),
      child: Container(
        child: PrimaryElevatedButton(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.sp,
            vertical: 10.sp,
          ),
          borderRadius: 4.sp,
          onPressed: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.call_outlined, size: 16.sp),
              SizedBox(width: 12.sp),
              Flexible(
                child: Text(
                  Strings.talkOnCall,
                  style: AppTextStyles.s1(
                    color: Colors.white,
                    fontType: FontType.MEDIUM,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailsRow({
    required String imagePath,
    required String text,
    TextStyle? textStyle,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.sp),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.sp),
            child: PrimaryAssetImage(
              imagePath: imagePath,
              height: 16.sp,
              width: 16.sp,
              color: AppColors.primaryOrange,
            ),
          ),
          SizedBox(width: 6.sp),
          Expanded(
            child: Text(
              text,
              style: textStyle ??
                  AppTextStyles.s1(
                    color: AppColors.secondaryBlack,
                    fontType: FontType.MEDIUM,
                  ),
            ),
          ),
        ],
      ),
    );
  }

  String? get _imageUrl {
    return astrologer.profliePicUrl ??
        astrologer.images?.small?.imageUrl ??
        astrologer.images?.medium?.imageUrl ??
        astrologer.images?.large?.imageUrl;
  }

  String get _name {
    String prefix = astrologer.namePrefix?.toString() ?? '';
    String firstName = astrologer.firstName ?? '';
    String lastName = astrologer.lastName ?? '';
    return prefix.isNotEmpty
        ? (prefix +
            ' ' +
            (firstName.isNotEmpty ? (firstName + ' ' + lastName) : lastName))
        : (firstName.isNotEmpty ? (firstName + ' ' + lastName) : lastName);
  }

  String get _skills {
    return astrologer.skills
            ?.map((skill) => skill.name)
            .join(', ')
            .toString() ??
        '';
  }

  String get _languages {
    return astrologer.languages
            ?.map((language) => language.name)
            .join(', ')
            .toString() ??
        ' ';
  }

  String get _chargePerMin {
    return Strings.indianRupee +
        ((astrologer.minimumCallDurationCharges ?? 0) /
                (astrologer.minimumCallDuration ?? 1))
            .round()
            .toString() +
        '/ ' +
        Strings.min;
  }

  String get _experience {
    int experience = (astrologer.experience ?? 0).round();
    return experience == 1
        ? '${experience} ${Strings.year}'
        : '${experience} ${Strings.years}';
  }
}
