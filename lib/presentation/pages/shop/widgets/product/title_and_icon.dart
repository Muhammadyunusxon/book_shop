import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../styles/style.dart';

class TitleAndIcon extends StatelessWidget {
  final String title;
  const TitleAndIcon({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Style.urbanistSemiBold(size: 20),
        ),
        const Spacer(),
        Container(
          height: 48.r,
          width: 48.r,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border:
                  Border.all(color: Style.greyscale200, width: 1.5)),
          child: Center(child: SvgPicture.asset(Assets.svgPersent)),
        )
      ],
    );
  }
}
