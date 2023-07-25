// ignore_for_file: deprecated_member_use

import 'package:book_shop/presentation/components/components.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../styles/style.dart';

class GCredits extends StatelessWidget {
  const GCredits({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(horizontal: 24),
      child: Container(
        padding: REdgeInsets.symmetric(horizontal: 24, vertical: 29),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: Style.white,
          boxShadow: Style.boxShadow,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              Assets.svgWalletPrimary,
              height: 24,
              width: 24,
              color: Style.primary,
            ),
            18.horizontalSpace,
            Text(
              'gCredits',
              style: Style.urbanistBold(),
            ),
            const Spacer(),
            Text(
              'N50,000.00',
              style: Style.urbanistBold(size: 16),
            ),
            18.horizontalSpace,
            CustomCheckbox(isActive: true, onTap: () {})
          ],
        ),
      ),
    );
  }
}
