import 'package:book_shop/presentation/components/components.dart';
import 'package:book_shop/presentation/styles/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MiniButton extends StatelessWidget {
  const MiniButton({
    Key? key,
    required this.onTap,
    this.isLoading = false,
    required this.title,
    required this.isActive,
    this.height = 32,
    this.style,
  }) : super(key: key);
  final VoidCallback onTap;
  final bool isLoading;
  final String title;
  final bool isActive;
  final double height;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return ButtonsEffect(
      child: InkWell(
        borderRadius: BorderRadius.circular(100.r),
        onTap: isLoading ? null : onTap,
        child: Container(
          height: height.r,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: isActive ? Style.primaryGradiant : null,
            border: Border.all(
              color: isActive ? Style.transparent : Style.primary,
            ),
            borderRadius: BorderRadius.circular(100.r),
          ),
          child: Center(
              child: CustomLoading(
            isLoading: isLoading,
            color: Style.white,
            size: 26,
            child: Text(
              title,
              style: style?.copyWith(
                    color: isActive ? Style.white : Style.primary,
                  ) ??
                  Style.urbanistSemiBold(
                    size: 14,
                    color: isActive ? Style.white : Style.primary,
                  ),
            ),
          )),
        ),
      ),
    );
  }
}
