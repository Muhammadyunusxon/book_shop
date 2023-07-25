import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../../../components/components.dart';
import '../../../styles/style.dart';

class RefundButton extends StatelessWidget {
  final VoidCallback onTap;
  const RefundButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonsEffect(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: REdgeInsets.symmetric(horizontal: 20, vertical: 8),
          decoration: BoxDecoration(
            color: Style.white,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                Assets.svgDownload,
                // ignore: deprecated_member_use
                color: Style.greyscale900,
              ),
              6.horizontalSpace,
              Text(
                "Refund",
                style: Style.urbanistSemiBold(
                  size: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
