import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../application/address/address_provider.dart';
import '../../../components/components.dart';
import '../../../app_route.dart';
import '../../../styles/style.dart';

class DeliveryLocations extends ConsumerWidget {
  const DeliveryLocations({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final state = ref.watch(addressProvider);
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Style.white,
        boxShadow: Style.boxShadow,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          20.verticalSpace,
          Text(
            'Deliver to',
            style: Style.urbanistBold(size: 20),
          ),
          16.verticalSpace,
          const Divider(),
          16.verticalSpace,
          ButtonsEffect(
            child: GestureDetector(
              onTap: () => AppRoute.goAddress(context, isSave: true),
              child: Row(
                children: [
                  Container(
                    height: 52.r,
                    width: 52.r,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Style.greenTransparent),
                    child: Container(
                      margin: REdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Style.primary,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          Assets.svgLocationWhite,
                        ),
                      ),
                    ),
                  ),
                  16.horizontalSpace,
                  Expanded(
                    child: Text(
                      state.addresses.length > state.selectAddress
                          ? state.addresses[state.selectAddress].title ?? ""
                          : "No Address",
                      style: Style.urbanistMedium(size: 17),
                      maxLines: 2,
                    ),
                  ),
                  8.horizontalSpace,
                  Icon(
                    FlutterRemix.arrow_right_s_line,
                    color: Style.primary,
                    size: 24.r,
                  )
                ],
              ),
            ),
          ),
          24.verticalSpace
        ],
      ),
    );
  }
}
