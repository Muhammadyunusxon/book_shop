import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../styles/style.dart';
import '../custom_loading.dart';
import 'buttons_effect.dart';

class ConfirmButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool isLoading;
  final String title;
  final bool isActive;
  final Color? color;
  final double height;
  final TextStyle? style;

  const ConfirmButton({
    Key? key,
    required this.onTap,
    this.isLoading = false,
    required this.title,
    this.isActive = true,
    this.height = 58,
    this.style,
    this.color,
  }) : super(key: key);

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
            color: isActive ? null : color ?? Style.secondary100,
            borderRadius: BorderRadius.circular(100.r),
          ),
          child: Center(
              child: CustomLoading(
            isLoading: isLoading,
            color: Style.white,
            size: 26,
            child: Text(title,
                style: style?.copyWith(
                        color: isActive
                            ? Style.white
                            : Style.greyscale900) ??
                    Style.urbanistSemiBold(
                        size: 16,
                        color: isActive
                            ? Style.white
                            : Style.greyscale900)),
          )),
        ),
      ),
    );
  }
}
