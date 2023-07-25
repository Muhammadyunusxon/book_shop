import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../application/chat/chat_provider.dart';
import '../../../../application/shop/shop_provider.dart';
import '../../../components/components.dart';
import '../../../app_route.dart';
import '../../../styles/style.dart';

class ActiveOrders extends ConsumerWidget {
  const ActiveOrders({super.key});

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
                    url: shops.last.img,
                    height: 120,
                    width: 120,
                  ),
                  16.horizontalSpace,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          shops.last.shopName ?? "",
                          style: Style.urbanistBold(size: 20),
                        ),
                        12.verticalSpace,
                        Text(
                          "3 items  | ${shops.last.location?.title}",
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
                                  .format(165000),
                              style: Style.urbanistBold(
                                size: 18,
                                color: Style.primary,
                              ),
                            ),
                            12.horizontalSpace,
                            Container(
                              padding: REdgeInsets.symmetric(
                                  horizontal: 8, vertical: 6),
                              decoration: BoxDecoration(
                                  color: Style.primary,
                                  borderRadius: BorderRadius.circular(6.r)),
                              child: Text(
                                "Paid",
                                style: Style.urbanistSemiBold(
                                  size: 12,
                                  color: Style.white,
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
              16.verticalSpace,
              const Divider(),
              16.verticalSpace,
              Row(
                children: [
                  Expanded(
                    child: CustomOutlineButton(
                      onTap: () {
                        ref.read(chatProvider.notifier).selectShop(shops.last);
                        AppRoute.goChat(context);
                      },
                      title: "Contact Seller",
                      isActive: false,
                    ),
                  ),
                  12.horizontalSpace,
                  Expanded(
                    child: CustomOutlineButton(
                      onTap: () {},
                      title: "Track Order",
                      isActive: true,
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
