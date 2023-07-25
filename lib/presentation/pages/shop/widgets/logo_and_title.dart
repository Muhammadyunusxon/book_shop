import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../styles/style.dart';

class LogoAndTitle extends StatelessWidget {
  final String img, name;
  const LogoAndTitle({super.key, required this.img, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 48.r,
          width: 48.r,
          decoration: BoxDecoration(
              border: Border.all(color: Style.storyColor),
              shape: BoxShape.circle,
              image:
                  DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
        ),
        16.horizontalSpace,
        Text(
          name,
          style: Style.urbanistBold(size: 20),
        )
      ],
    );
  }
}
