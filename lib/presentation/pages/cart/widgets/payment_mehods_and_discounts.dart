import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/components.dart';
import '../../../app_route.dart';
import '../../../styles/style.dart';

class PaymentMethodsAndDiscounts extends StatelessWidget {
  const PaymentMethodsAndDiscounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 26, vertical: 26),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Style.white,
        boxShadow: Style.boxShadow,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          ButtonsEffect(
            child: GestureDetector(
              onTap: () => AppRoute.goToPaymentsPage(context),
              child: Row(
                children: [
                  SvgPicture.asset(
                    Assets.svgWalletPrimary,
                    // ignore: deprecated_member_use
                    color: Style.primary,
                  ),
                  14.horizontalSpace,
                  Text(
                    'Payment Methods',
                    style: Style.urbanistMedium(size: 14),
                  ),
                  const Spacer(),
                  Text(
                    'E-Wallet',
                    style: Style.urbanistSemiBold(
                        size: 16, color: Style.primary),
                  ),
                  18.horizontalSpace,
                  const Icon(
                    FlutterRemix.arrow_right_s_line,
                    color: Style.primary,
                  )
                ],
              ),
            ),
          ),
          22.verticalSpace,
          const Divider(
            color: Style.greyscale400,
          ),
          22.verticalSpace,
          ButtonsEffect(
            child: GestureDetector(
              onTap: () => AppRoute.goToGetDiscountsPage(context),
              child: Row(
                children: [
                  SvgPicture.asset(
                    Assets.svgDiscount,
                    // ignore: deprecated_member_use
                    color: Style.primary,
                  ),
                  14.horizontalSpace,
                  Text(
                    'Get Discounts',
                    style: Style.urbanistMedium(size: 14),
                  ),
                  const Spacer(),
                  Container(
                    padding: REdgeInsets.symmetric(vertical: 6, horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.r),
                      color: Style.primary,
                    ),
                    child: Text(
                      'Discount 20%  x',
                      style: Style.urbanistMedium(
                          size: 14, color: Style.white),
                    ),
                  ),
                  12.horizontalSpace,
                  const Icon(
                    FlutterRemix.arrow_right_s_line,
                    color: Style.primary,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
