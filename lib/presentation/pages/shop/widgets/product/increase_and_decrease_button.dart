import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../components/buttons/buttons_effect.dart';
import '../../../../styles/style.dart';

class IncreaseAndDecreaseButton extends StatelessWidget {
  final void Function()? onIncrease;
  final void Function()? onDecrease;
  final int count;
  const IncreaseAndDecreaseButton(
      {super.key, this.onIncrease, this.onDecrease, required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonsEffect(
          child: GestureDetector(
            onTap: onDecrease,
            child: Container(
              height: 58.r,
              width: 58.r,
              decoration: BoxDecoration(
                  border: Border.all(color: Style.greyscale300),
                  borderRadius: BorderRadius.circular(16.r)),
              child: Center(
                child: Container(
                  height: 2.r,
                  width: 16.r,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Style.primary),
                ),
              ),
            ),
          ),
        ),
        40.horizontalSpace,
        Text(
          '$count',
          style: Style.urbanistBold(size: 32),
        ),
        40.horizontalSpace,
        ButtonsEffect(
          child: GestureDetector(
            onTap: onIncrease,
            child: Container(
              height: 58.r,
              width: 58.r,
              decoration: BoxDecoration(
                  border: Border.all(color: Style.greyscale300),
                  borderRadius: BorderRadius.circular(16.r)),
              child: Center(
                  child: SvgPicture.asset(
                Assets.svgPlus,
                // ignore: deprecated_member_use
                color: Style.primary,
              )),
            ),
          ),
        ),
      ],
    );
  }
}
