import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../style.dart';

AppBarTheme appBarLightTheme = AppBarTheme(
  backgroundColor: Style.primary,
  elevation: 0,
  iconTheme: const IconThemeData(color: Style.black),
  titleTextStyle: Style.urbanistMedium(size: 16),
);

ScrollbarThemeData scrollbarThemeData = ScrollbarThemeData(
  trackColor: MaterialStateProperty.all(Style.primary),
);

DataTableThemeData dataTableLightThemeData = DataTableThemeData(
  columnSpacing: 24,
  headingRowColor: MaterialStateProperty.all(Style.greyscale800),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(12.r)),
    border: Border.all(color: Style.greyscale800),
  ),
  dataTextStyle: Style.urbanistMedium(size: 12),
);
