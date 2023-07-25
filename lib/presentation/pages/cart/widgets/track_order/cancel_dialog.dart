import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/components.dart';
import '../../../../app_route.dart';
import '../../../../styles/style.dart';

class CancelDialog extends StatelessWidget {
  const CancelDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 32),
      decoration: BoxDecoration(
          color: Style.white, borderRadius: BorderRadius.circular(52)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          40.verticalSpace,
          Text(
            textAlign: TextAlign.center,
            "We’re so sad about your cancellation",
            style: Style.urbanistSemiBold(
              size: 24,
              color: Style.primary,
            ),
          ),
          16.verticalSpace,
          Padding(
            padding: REdgeInsets.symmetric(horizontal: 32),
            child: const Text(
              "We will continue to improve our service & satisfy you on the next order.",
              textAlign: TextAlign.center,
            ),
          ),
          32.verticalSpace,
          Padding(
            padding: REdgeInsets.symmetric(horizontal: 32),
            child: ConfirmButton(
                onTap: () {
                  AppRoute.goToRateStorePage(context);
                },
                title: "OK"),
          ),
          32.verticalSpace,
        ],
      ),
    );
  }
}
