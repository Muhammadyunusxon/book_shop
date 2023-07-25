// ignore_for_file: deprecated_member_use

import 'package:book_shop/presentation/components/buttons/buttons_effect.dart';
import 'package:book_shop/presentation/styles/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  final String title;
  final bool isActive;
  final String? icon;
  final VoidCallback? onTap;

  const CustomOutlineButton({
    Key? key,
    required this.title,
    required this.isActive,
    this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonsEffect(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: REdgeInsets.only(right: 12),
          decoration: BoxDecoration(
            color: isActive ? Style.primary : Style.white,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: Style.primary),
          ),
          padding: REdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon != null
                    ? Padding(
                        padding: REdgeInsets.only(right: 6),
                        child: SvgPicture.asset(
                          icon!,
                          color: isActive
                              ? Style.white
                              : Style.primary,
                        ),
                      )
                    : const SizedBox.shrink(),
                Text(
                  title,
                  style: Style.urbanistSemiBold(
                    size: 16,
                    color: isActive
                        ? Style.white
                        : Style.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
