import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../style.dart';

InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
  focusColor: Style.primary,
  errorStyle:
      Style.urbanistRegular(color: Style.error, size: 14),
  contentPadding: REdgeInsets.symmetric(vertical: 20, horizontal: 12),
  hintStyle: Style.urbanistRegular(
      color: Style.greyscale500, size: 14),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16.r),
    borderSide: const BorderSide(color: Style.transparent),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16.r),
    borderSide: const BorderSide(color: Style.transparent),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16.r),
    borderSide: const BorderSide(color: Style.primary),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(16.r)),
    borderSide: const BorderSide(color: Style.error),
  ),
);

OutlineInputBorder secondaryOutlineInputBorder(BuildContext context) {
  return OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(16)),
    borderSide: BorderSide(
      color: Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.15),
    ),
  );
}
