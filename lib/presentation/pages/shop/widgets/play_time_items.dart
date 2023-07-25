import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../../../infrastructure/models/models.dart';
import '../../../components/components.dart';
import '../../../styles/style.dart';

class PlayTimeItems extends ConsumerWidget {
  final ProductData product;
  final bool isOnCart;
  final bool isLike;
  final VoidCallback onLike;

  const PlayTimeItems({
    super.key,
    required this.isOnCart,
    required this.product,
    required this.onLike,
    required this.isLike,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: REdgeInsets.only(bottom: 16),
      padding: REdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(
            color:
                isOnCart ? Style.primary : Style.transparent),
        color: Style.white,
        boxShadow: Style.boxShadow,
        borderRadius: BorderRadius.circular(28.r),
      ),
      child: Row(
        children: [
          Stack(
            children: [
              CustomImage(
                url: product.img,
                height: 120,
                width: 120,
                radius: 20,
              ),
              if (product.status?.isNotEmpty ?? false)
                Positioned(
                  top: 12.r,
                  left: 12.r,
                  child: Container(
                    padding: REdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      gradient: Style.primaryGradiant,
                    ),
                    child: Text(
                      product.status ?? "",
                      style: Style.urbanistSemiBold(
                          size: 10, color: Style.white),
                    ),
                  ),
                )
            ],
          ),
          16.horizontalSpace,
          Expanded(
            child: Padding(
              padding: REdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(
                      product.name ?? "",
                      style: Style.urbanistBold(size: 17),
                      maxLines: 2,
                    ),
                  ),
                  12.verticalSpace,
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        4.horizontalSpace,
                        SvgPicture.asset(Assets.svgStar),
                        4.horizontalSpace,
                        Text(
                          "${product.rate ?? " "}",
                          style: Style.urbanistMedium(
                            color: Style.greyscale700,
                            size: 14,
                          ),
                        ),
                        6.horizontalSpace,
                        Text(
                          "${product.order ?? 0} Reviews",
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
                                locale: 'en_US', symbol: "N", decimalDigits: 0)
                            .format(product.price ?? 0),
                        style: Style.urbanistBold(
                            color: Style.primary, size: 20),
                      ),
                      const Spacer(),
                      LikeButton(onTap: onLike, isLike: isLike),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
