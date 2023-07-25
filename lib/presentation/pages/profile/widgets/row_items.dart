import 'package:book_shop/presentation/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../styles/style.dart';

class RowItems extends StatelessWidget {
  final String icon, title;
  final void Function() onTap;
  const RowItems({super.key, required this.icon, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ButtonsEffect(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 90.r,
          width: 95.r,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              color: Style.containerColor),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(icon),
              9.verticalSpace,
              Text(
                title,
                style: Style.urbanistMedium(
                    size: 12, color: Style.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
