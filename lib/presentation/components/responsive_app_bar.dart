import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/style.dart';

class ResponsiveAppBar extends StatelessWidget {
  final String title;
  final Widget? suffix;
  final double? paddingHorizontal;

  const ResponsiveAppBar(
      {Key? key, required this.title, this.paddingHorizontal, this.suffix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(
          horizontal: paddingHorizontal ?? 18, vertical: 6),
      child: Row(
        children: [
          IconButton(
            splashRadius: 26.r,
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back, size: 26.r),
          ),
          Expanded(
            child: Text(
              title,
              style: Style.urbanistSemiBold(size: 22),
            ),
          ),
          suffix ?? const SizedBox.shrink(),
        ],
      ),
    );
  }
}
