import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../styles/style.dart';

class ShopInfoItems extends StatelessWidget {
  const ShopInfoItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(vertical: 24),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Style.containerColor,
        boxShadow: const [
          BoxShadow(
            color: Style.greyscale200,
            offset: Offset(0, 4),
            blurRadius: 60,
          ),
        ],
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                padding: REdgeInsets.all(18),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Style.primary),
                child: SvgPicture.asset(Assets.svgStarWhite),
              ),
              16.verticalSpace,
              Text(
                '4.8',
                style: Style.urbanistBold(),
              ),
              8.verticalSpace,
              Text(
                'Ratings',
                style: Style.urbanistMedium(
                    size: 12, color: Style.greyscale500),
              )
            ],
          ),
          53.horizontalSpace,
          Column(
            children: [
              Container(
                padding: REdgeInsets.all(16),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Style.primary),
                child: SvgPicture.asset(Assets.svgBagWhite),
              ),
              16.verticalSpace,
              Text(
                '24',
                style: Style.urbanistBold(),
              ),
              8.verticalSpace,
              Text(
                'Orders',
                style: Style.urbanistMedium(
                    size: 12, color: Style.greyscale500),
              )
            ],
          ),
          53.horizontalSpace,
          Column(
            children: [
              Container(
                padding: REdgeInsets.all(18),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Style.primary),
                child: SvgPicture.asset(Assets.svgTime),
              ),
              16.verticalSpace,
              Text(
                '2',
                style: Style.urbanistBold(),
              ),
              8.verticalSpace,
              Text(
                'Months',
                style: Style.urbanistMedium(
                    size: 12, color: Style.greyscale500),
              )
            ],
          ),
        ],
      ),
    );
  }
}
