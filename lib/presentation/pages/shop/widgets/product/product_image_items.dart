import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../components/custom_network_image.dart';
import '../../../../styles/style.dart';

class ProductImageAndItems extends StatelessWidget {
  final String img;
  const ProductImageAndItems({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomImage(url: img, height: 400, radius: 0, width: double.infinity),
        Positioned(
            top: MediaQuery.of(context).padding.top + 4.r,
            left: 18.r,
            right: 24.r,
            child: Row(
              children: [
                IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      FlutterRemix.arrow_left_line,
                      size: 26.r,
                    )),
                const Spacer(),
                SvgPicture.asset(
                  Assets.svgSend,
                  // ignore: deprecated_member_use
                  color: Style.black,
                ),
              ],
            ))
      ],
    );
  }
}
