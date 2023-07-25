import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../../infrastructure/models/product_data.dart';
import '../app_route.dart';
import '../styles/style.dart';
import 'buttons/like_button.dart';
import 'custom_network_image.dart';

class ProductHorizontal extends StatelessWidget {
  final ProductData productData;
  final VoidCallback onLike;
  final bool isLike;
  final int index;

  const ProductHorizontal({
    Key? key,
    required this.productData,
    required this.onLike,
    required this.isLike,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AppRoute.goToProductPage(context, index: index),
      child: Container(
        margin: REdgeInsets.only(bottom: 16),
        padding: REdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Style.containerColor,
          boxShadow: Style.boxShadow,
          borderRadius: BorderRadius.circular(28.r),
        ),
        child: Row(
          children: [
            Stack(
              children: [
                CustomImage(
                  url: productData.img,
                  height: 120,
                  width: 120,
                  radius: 20,
                ),
                if (productData.status?.isNotEmpty ?? false)
                  Positioned(
                    top: 0.r,
                    left: 0.r,
                    child: Container(
                      padding:
                          REdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.r),
                          bottomRight: Radius.circular(12.r),
                        ),
                        gradient: Style.primaryGradiant,
                      ),
                      child: Text(
                        productData.status ?? "",
                        style: Style.urbanistSemiBold(
                            size: 10, color: Style.white),
                      ),
                    ),
                  )
              ],
            ),
            16.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(
                      productData.name ?? "",
                      style: Style.urbanistBold(size: 17),
                      maxLines: 2,
                    ),
                  ),
                  12.verticalSpace,
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            productData.shop?.shopName ?? "",
                            style: Style.urbanistMedium(
                              color: Style.greyscale700,
                              size: 14,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        6.horizontalSpace,
                        Text(
                          "|",
                          style: Style.urbanistMedium(
                            color: Style.greyscale700,
                            size: 14,
                          ),
                        ),
                        4.horizontalSpace,
                        SvgPicture.asset(Assets.svgStar),
                        4.horizontalSpace,
                        Text(
                          "${productData.rate ?? " "}",
                          style: Style.urbanistMedium(
                            color: Style.greyscale700,
                            size: 14,
                          ),
                        ),
                        6.horizontalSpace,
                        Text(
                          "(${productData.order ?? 0})",
                          style: Style.urbanistMedium(
                            color: Style.greyscale700,
                            size: 14,
                          ),
                        ),
                        8.horizontalSpace,
                      ],
                    ),
                  ),
                  12.verticalSpace,
                  Row(
                    children: [
                      Text(
                        NumberFormat.currency(
                                locale: 'en_US', symbol: "\$", decimalDigits: 0)
                            .format(productData.price ?? 0),
                        style: Style.urbanistBold(
                            color: Style.primary, size: 20),
                      ),
                      Text(
                        '/kg',
                        style: Style.urbanistMedium(
                            color: Style.grey, size: 20),
                      ),
                      const Spacer(),
                      LikeButton(onTap: onLike, isLike: isLike),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
