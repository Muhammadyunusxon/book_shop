import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../style.dart';

CheckboxThemeData checkboxThemeData = CheckboxThemeData(
  fillColor: MaterialStateProperty.all(Style.primary),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(6.r)),
  ),
  side: const BorderSide(color: Style.greyscale700),
);
