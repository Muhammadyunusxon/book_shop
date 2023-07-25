import 'package:book_shop/presentation/components/components.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../../../styles/style.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Style.white, borderRadius: BorderRadius.circular(52)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          32.verticalSpace,
          SvgPicture.asset(
            Assets.svgSpreadWallet,
            height: 160.r,
          ),
          32.verticalSpace,
          Text(
            "Refund Successful!",
            style: Style.urbanistSemiBold(
              size: 24,
              color: Style.primary,
            ),
          ),
          16.verticalSpace,
          Padding(
            padding: REdgeInsets.symmetric(horizontal: 32),
            child: const Text(
              "You have successfully requested a refund of N200,000.00 from gCart. Your account will be credited within 1 to 3 working days.",
              textAlign: TextAlign.center,
            ),
          ),
          32.verticalSpace,
          Padding(
            padding: REdgeInsets.symmetric(horizontal: 32),
            child: ConfirmButton(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                title: "OK"),
          ),
          32.verticalSpace,
        ],
      ),
    );
  }
}
