import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../components/components.dart';
import '../../../styles/style.dart';

class ContactItems extends StatelessWidget {
  final bool isSvg;
  final IconData? icon;
  final String title;

  const ContactItems(
      {super.key, this.icon, required this.title, this.isSvg = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(horizontal: 24),
      child: ButtonsEffect(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Style.white,
              boxShadow: Style.boxShadow,
              borderRadius: BorderRadius.circular(20.r)),
          child: Padding(
            padding: REdgeInsets.all(26),
            child: Row(
              children: [
                isSvg
                    ? SvgPicture.asset(
                        Assets.svgTiktok,
                        height: 20.r,
                        width: 20.r,
                        // ignore: deprecated_member_use
                        color: Style.primary,
                      )
                    : Icon(
                        icon,
                        color: Style.primary,
                      ),
                18.horizontalSpace,
                Text(
                  title,
                  style: Style.urbanistBold(size: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
