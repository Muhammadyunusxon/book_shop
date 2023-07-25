import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

import '../../../application/shop/shop_provider.dart';
import '../../components/components.dart';
import '../../styles/style.dart';
import 'widgets/track_order/float_buttons.dart';
import 'widgets/track_order/order_info.dart';
import 'widgets/track_order/shop_info.dart';
import 'widgets/track_order/status_items.dart';

class TrackOrderPage extends StatelessWidget {
  final int? totalPrice;
  const TrackOrderPage({super.key, this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const ResponsiveAppBar(title: 'Track Order'),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: REdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      33.verticalSpace,
                      Consumer(builder: (context, ref, ch) {
                        final shop = ref.watch(shopProvider).shops.last;
                        return Text(
                          shop.shopName ?? "",
                          style: Style.urbanistBold(size: 24),
                        );
                      }),
                      28.verticalSpace,
                      const ShopInfoItems(),
                      28.verticalSpace,
                      const StatusItems(),
                      14.verticalSpace,
                      OrderInfo(totalPrice: totalPrice),
                      100.verticalSpace,
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
          width: double.infinity,
          height: 120.h,
          child: const FloatingButtons()),
    );
  }
}
