import 'package:book_shop/presentation/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../styles/style.dart';

class ColumnItems extends StatelessWidget {
  final String icon, title;
   final void Function() onTap;
  const ColumnItems({super.key, required this.icon, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ButtonsEffect(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: REdgeInsets.symmetric(vertical: 24, horizontal: 24),
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              color: Style.containerColor),
          child: Row(
            children: [
              SvgPicture.asset(icon),
              24.horizontalSpace,
              Text(
                title,
                style: Style.urbanistMedium(
                    size: 14, color: Style.black),
              ),
              const Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                size: 21.r,
                color: Style.grey,
              )
            ],
          ),
        ),
      ),
    );
  }
}
