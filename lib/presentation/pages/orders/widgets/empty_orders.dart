import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

import '../../../styles/style.dart';

class EmptyOrders extends StatelessWidget {
  final String title;
  const EmptyOrders({Key? key, this.title = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // const CustomImage(url: Assets.pngNoItem, height: 273, width: 280),
        40.verticalSpace,
        Text(
          "Empty",
          style: Style.urbanistSemiBold(size: 21),
        ),
        12.verticalSpace,
        Text(
          "You do not have an ${title.toLowerCase()} order at this time",
          style: Style.urbanistRegular(),
        )
      ],
    );
  }
}
