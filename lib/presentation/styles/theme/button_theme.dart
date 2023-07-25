import 'package:book_shop/presentation/styles/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


ElevatedButtonThemeData elevatedButtonThemeData = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    padding: REdgeInsets.all(16),
    backgroundColor: Style.primary,
    minimumSize: const Size(double.infinity, 32),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12.r)),
    ),
  ),
);

TextButtonThemeData textButtonThemeData = TextButtonThemeData(
  style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all(Style.primary),
    textStyle:
        MaterialStateProperty.all(Style.urbanistSemiBold(size: 16)),
  ),
);

OutlinedButtonThemeData outlinedButtonTheme(
    {Color borderColor = Style.greyscale500}) {
  return OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Style.primary,
      padding: REdgeInsets.all(24),
      minimumSize: const Size(double.infinity, 32),
      side: BorderSide(width: 1.5, color: borderColor),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.r)),
      ),
    ),
  );
}
