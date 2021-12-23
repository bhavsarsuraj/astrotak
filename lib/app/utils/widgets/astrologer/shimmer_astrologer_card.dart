import 'package:astrotak/app/utils/widgets/container/shimmer_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShimmerAstrologyCard extends StatelessWidget {
  const ShimmerAstrologyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShimmerContainer(
          height: 70.sp,
          width: 90.sp,
          borderRadius: 8.sp,
        ),
        SizedBox(width: 8.sp),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShimmerContainer(height: 20.sp, width: 120.sp),
              SizedBox(height: 6.sp),
              _buildShimmerDetailsRow(height: 80.sp, width: 150.sp),
              SizedBox(height: 6.sp),
              _buildShimmerDetailsRow(height: 20.sp, width: 100.sp),
              SizedBox(height: 6.sp),
              _buildShimmerDetailsRow(height: 20.sp, width: 80.sp),
              SizedBox(height: 10.sp),
              Padding(
                padding: EdgeInsets.only(left: 24.sp),
                child: ShimmerContainer(
                  height: 32.sp,
                  width: 120.sp,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 8.sp),
        Expanded(
          flex: 1,
          child: ShimmerContainer(
            height: 20,
            width: 40,
          ),
        ),
      ],
    );
  }

  Widget _buildShimmerDetailsRow({
    required double height,
    required double width,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShimmerContainer(
          height: 16.sp,
          width: 16.sp,
        ),
        SizedBox(width: 6.sp),
        ShimmerContainer(
          height: height,
          width: width,
        ),
      ],
    );
  }
}
