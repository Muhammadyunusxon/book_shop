import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/style.dart';

class CustomLoading extends StatelessWidget {
  final Widget child;
  final bool? isLoading;
  final Color? color;
  final double? size;

  const CustomLoading(
      {Key? key,
      required this.child,
      this.isLoading,
      this.color,
      this.size = 24})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isLoading ?? true
        ? SizedBox(
            height: size?.r,
            width: size?.r,
            child: CircularProgressIndicator(
              color: color ?? Style.primary,
              strokeWidth: 3.4.r,
            ))
        : child;
  }
}
