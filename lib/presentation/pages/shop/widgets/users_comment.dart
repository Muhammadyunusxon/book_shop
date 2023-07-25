import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../components/custom_network_image.dart';
import '../../../styles/style.dart';

class UsersComment extends StatelessWidget {
  final String img, name, lastName, comment, likesCount, time;
  final int index;
  const UsersComment(
      {super.key,
      required this.img,
      required this.name,
      required this.lastName,
      required this.comment,
      required this.likesCount,
      required this.time,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        25.verticalSpace,
        Row(
          children: [
            CustomImage(
              url: img,
              height: 48,
              width: 48,
              radius: 100,
            ),
            16.horizontalSpace,
            Text(
              '$name $lastName',
              style: Style.urbanistBold(size: 16),
            ),
            const Spacer(),
            SvgPicture.asset(Assets.svgStar),
            8.horizontalSpace,
            SvgPicture.asset(Assets.svgStar),
            8.horizontalSpace,
            SvgPicture.asset(Assets.svgStar),
            8.horizontalSpace,
            SvgPicture.asset(Assets.svgStar),
            8.horizontalSpace,
            Padding(
              padding: REdgeInsets.only(right: 16),
              child: index == 0
                  ? SvgPicture.asset(
                      Assets.svgSemiStar,
                      height: 13.h,
                      width: 13.w,
                    )
                  : SvgPicture.asset(Assets.svgStar),
            ),
            SvgPicture.asset(Assets.svgMoreCircle)
          ],
        ),
        12.verticalSpace,
        Text(
          comment,
          style: Style.urbanistMedium(size: 14),
        ),
        14.verticalSpace,
        Row(
          children: [
            SvgPicture.asset(Assets.svgLike),
            10.horizontalSpace,
            Text(
              likesCount,
              style: Style.urbanistMedium(size: 12),
            ),
            24.horizontalSpace,
            Text(
              time,
              style: Style.urbanistMedium(
                  size: 12, color: Style.greyscale700),
            ),
          ],
        )
      ],
    );
  }
}
