import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../infrastructure/models/shop_data.dart';
import '../styles/style.dart';
import 'buttons/like_button.dart';
import 'custom_network_image.dart';

class StoreHorizontal extends StatelessWidget {
  final ShopData shopData;
  final VoidCallback onLike;
  final bool isLike;

  const StoreHorizontal(
      {Key? key,
      required this.shopData,
      required this.onLike,
      required this.isLike})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 200.r,
          margin: REdgeInsets.only(right: 16),
          padding: REdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Style.white,
            boxShadow: const [
              BoxShadow(
                color: Style.greyscale200,
                offset: Offset(0, 3),
                blurRadius: 50,
              ),
            ],
            borderRadius: BorderRadius.circular(28.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImage(
                url: shopData.img,
                height: 192,
                width: 192,
              ),
              Expanded(
                child: Text(
                  shopData.shopName ?? "",
                  style: Style.urbanistSemiBold(size: 16),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              8.verticalSpace,
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        shopData.location?.title ?? "",
                        style: Style.urbanistMedium(
                          color: Style.greyscale700,
                          size: 12,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      "|",
                      style: Style.urbanistMedium(
                        color: Style.greyscale700,
                        size: 12,
                      ),
                    ),
                    4.horizontalSpace,
                    SvgPicture.asset(Assets.svgStar),
                    4.horizontalSpace,
                    Text(
                      "${shopData.rate ?? " "}",
                      style: Style.urbanistMedium(
                        color: Style.greyscale700,
                        size: 12,
                      ),
                    ),
                    6.horizontalSpace,
                    Text(
                      "(${shopData.order})",
                      style: Style.urbanistMedium(
                        color: Style.greyscale700,
                        size: 12,
                      ),
                    ),
                    8.horizontalSpace,
                  ],
                ),
              ),
              6.verticalSpace,
              LikeButton(onTap: onLike, isLike: isLike),
            ],
          ),
        ),
        if (shopData.isAds ?? false)
          Positioned(
            top: 12.r,
            left: 12.r,
            child: Container(
              padding: REdgeInsets.symmetric(vertical: 4, horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
                gradient: Style.primaryGradiant,
              ),
              child: Text(
                "ADS",
                style: Style.urbanistSemiBold(
                    size: 10, color: Style.white),
              ),
            ),
          )
      ],
    );
  }
}
