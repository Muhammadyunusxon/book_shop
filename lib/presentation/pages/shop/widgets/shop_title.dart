import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../styles/style.dart';

class ShopTitle extends StatelessWidget {
  final String title;

  const ShopTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 14.r,
          top: Platform.isAndroid ? 24.r : 18.r,
          right: 14.r,
          child: SizedBox(
            width: double.infinity,
            child: Center(
              child: Text(
                title,
                style: Style.urbanistSemiBold(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
