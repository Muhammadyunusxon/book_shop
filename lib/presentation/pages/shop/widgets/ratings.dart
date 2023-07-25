import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import '../../../styles/style.dart';

class ReviewRatings extends StatelessWidget {
  final int itemCount;
  final List nums;
  const ReviewRatings({super.key, required this.itemCount, required this.nums});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 39.h,
      child: ListView.builder(
        padding: REdgeInsets.only(left: 24),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: itemCount + 1,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: REdgeInsets.only(right: 8),
            decoration: BoxDecoration(
                border: Border.all(color: Style.primary),
                borderRadius: BorderRadius.circular(100.r)),
            child: Padding(
              padding: REdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  SvgPicture.asset(
                    index == 0 ? Assets.svgSwap : Assets.svgStar,
                  ),
                  9.horizontalSpace,
                  Text(
                    index == 0 ? 'Sort by' : nums[index - 1],
                    style: Style.urbanistSemiBold(
                        color: Style.primary),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
