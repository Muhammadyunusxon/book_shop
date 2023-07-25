import 'package:book_shop/presentation/app_assets.dart';
import 'package:book_shop/presentation/components/buttons/like_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../../components/custom_network_image.dart';
import '../../../styles/style.dart';

class PopularItems extends StatelessWidget {
  final String title, rating, status, img;
  final int price;
  final bool isStatus;
  final bool isOnCart;
  final bool isLike;
  final VoidCallback onLike;

  const PopularItems({
    super.key,
    required this.title,
    required this.rating,
    required this.price,
    required this.status,
    required this.img,
    required this.isStatus,
    required this.isOnCart,
    required this.isLike,
    required this.onLike,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: REdgeInsets.only(right: 16),
      width: 182.r,
      decoration: BoxDecoration(
          border: Border.all(
              color: isOnCart
                  ? Style.primary
                  : Style.transparent),
          borderRadius: BorderRadius.circular(28.r),
          color: Style.white,
          boxShadow: Style.boxShadow),
      child: Padding(
        padding: REdgeInsets.symmetric(horizontal: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            14.verticalSpace,
            Stack(
              children: [
                CustomImage(
                  url: img,
                  height: 154,
                  width: 154,
                  radius: 20,
                ),
                isStatus
                    ? Positioned(
                        top: 12.r,
                        left: 12.r,
                        child: Container(
                          width: 74.r,
                          height: 24.r,
                          decoration: BoxDecoration(
                              color: Style.primary,
                              borderRadius: BorderRadius.circular(6.r)),
                          child: Padding(
                            padding: REdgeInsets.symmetric(
                                vertical: 6, horizontal: 10),
                            child: Builder(builder: (context) {
                              return Center(
                                child: Text(
                                  status,
                                  style: Style.urbanistRegular(
                                      size: 10, color: Style.white),
                                ),
                              );
                            }),
                          ),
                        ))
                    : const SizedBox.shrink()
              ],
            ),
            12.verticalSpace,
            Text(
              title,
              style: Style.urbanistBold(size: 18),
            ),
            13.verticalSpace,
            Row(
              children: [
                SvgPicture.asset(Assets.svgStar),
                6.horizontalSpace,
                Text(
                  rating,
                  style: Style.urbanistMedium(size: 12),
                ),
                6.horizontalSpace,
                Text(
                  '200 Reviews',
                  style: Style.urbanistMedium(size: 12),
                )
              ],
            ),
            13.verticalSpace,
            Row(
              children: [
                Text(
                  NumberFormat.currency(
                          locale: 'en_US', symbol: "N", decimalDigits: 0)
                      .format(price),
                  style: Style.urbanistBold(
                      size: 18, color: Style.primary),
                ),
                const Spacer(),
                LikeButton(onTap: onLike, isLike: isLike),
              ],
            )
          ],
        ),
      ),
    );
  }
}
