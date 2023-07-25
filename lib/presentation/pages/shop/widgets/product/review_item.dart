import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../styles/style.dart';

class ReviewItem extends StatelessWidget {
  final String rate;
  const ReviewItem({super.key, required this.rate});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          Assets.svgStar,
          height: 20.r,
          width: 20.r,
        ),
        14.horizontalSpace,
        Text(
          rate,
          style: Style.urbanistSemiBold(size: 20),
        ),
        12.horizontalSpace,
        Text(
          '(${rate}k reviews)',
          style: Style.urbanistSemiBold(
              size: 16, color: Style.greyscale700),
        ),
      ],
    );
  }
}
