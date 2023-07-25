import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../application/card/card_provider.dart';
import '../../../styles/style.dart';

class CustomCard extends ConsumerWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final state = ref.watch(cardProvider);

    return Stack(
      children: [
        // CustomImage(
        //   url: Assets.pngMoCard,
        //   height: 240.r,
        //   width: double.infinity,
        //   radius: 24,
        // ),
        Positioned(
            top: 30.r,
            left: 30.r,
            bottom: 30.r,
            right: 30.r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    state.name.isNotEmpty ? state.name : "•••••••• ••••••••",
                    style: Style.urbanistSemiBold(
                        color: Style.white,
                        size: state.name.isNotEmpty ? 16 : 24),
                  ),
                ),
                Text(
                  state.number.isNotEmpty
                      ? state.number
                      : "•••• •••• •••• ••••",
                  style: Style.urbanistSemiBold(
                      color: Style.white,
                      size: state.number.isNotEmpty ? 20 : 28),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Expiry date",
                            style: Style.urbanistMedium(
                              color: Style.white,
                              size: 14,
                            ),
                          ),
                          4.verticalSpace,
                          Text(
                            state.expiryDate.isNotEmpty
                                ? state.expiryDate
                                : "••••/••••",
                            style: Style.urbanistMedium(
                              color: Style.white,
                              size: state.name.isNotEmpty ? 14 : 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // CustomImage(
                    //   url: AppHelper.getCardTypeImage(cardType),
                    //   height: 45,
                    //   width: 60,
                    //   boxFit: BoxFit.contain,
                    // ),
                  ],
                ),
              ],
            ))
      ],
    );
  }
}
