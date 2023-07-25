import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../application/shop/shop_provider.dart';
import '../../../components/custom_network_image.dart';
import '../../../styles/style.dart';

class CancelledOrders extends ConsumerWidget {
  const CancelledOrders({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final shops = ref.watch(shopProvider).shops;
    return ListView(
      padding: REdgeInsets.symmetric(vertical: 24),
      children: [
        Container(
          padding: REdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Style.white,
            boxShadow: Style.boxShadow,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  CustomImage(
                    url: shops.first.img,
                    height: 120,
                    width: 120,
                  ),
                  16.horizontalSpace,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          shops.first.shopName ?? "",
                          style: Style.urbanistBold(size: 20),
                        ),
                        12.verticalSpace,
                        Text(
                          "3 items  | ${shops.first.location?.title}",
                          style: Style.urbanistMedium(
                            size: 14,
                            color: Style.greyscale700,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        12.verticalSpace,
                        Row(
                          children: [
                            Text(
                              NumberFormat.currency(
                                      locale: 'en_US',
                                      symbol: "N",
                                      decimalDigits: 0)
                                  .format(35000000),
                              style: Style.urbanistBold(
                                size: 18,
                                color: Style.primary,
                              ),
                            ),
                            12.horizontalSpace,
                            Container(
                              padding: REdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Style.transparent,
                                border: Border.all(
                                  color: Style.error,
                                ),
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                              child: Text(
                                "Cancelled",
                                style: Style.urbanistSemiBold(
                                  size: 12,
                                  color: Style.error,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
