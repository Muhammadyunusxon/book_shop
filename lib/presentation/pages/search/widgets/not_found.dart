import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

import '../../../components/components.dart';
import '../../../styles/style.dart';

class NotFound extends StatelessWidget {
  const NotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          120.verticalSpace,
          const CustomImage(
            url: "Assets.png404Error",
            height: 282,
            width: 282,
          ),
          40.verticalSpace,
          Text(
            "Not Found",
            style: Style.urbanistBold(size: 24),
          ),
          12.verticalSpace,
          Text(
            "Sorry, the keyword you entered cannot be found, please check again or search with another keyword.",
            style: Style.urbanistMedium(size: 18),
            textAlign: TextAlign.center,
          ),
          190.verticalSpace,
        ],
      ),
    );
  }
}
