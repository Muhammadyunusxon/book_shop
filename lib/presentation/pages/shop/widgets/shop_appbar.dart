import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../components/custom_network_image.dart';
import '../../../styles/style.dart';
import 'shop_title.dart';

class ShopAppBar extends StatelessWidget {
  final String shopName, img;
  const ShopAppBar({super.key, required this.shopName, required this.img});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      snap: true,
      floating: true,
      forceElevated: true,
      expandedHeight: 300.r,
      toolbarHeight: 60.r,
      elevation: 0,
      leading: const SizedBox.shrink(),
      backgroundColor: Style.white,
      flexibleSpace: FlexibleSpaceBar(
          expandedTitleScale: 1.5,
          collapseMode: CollapseMode.pin,
          title: ShopTitle(
            title: shopName,
          ),
          titlePadding: REdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
          ),
          background: CustomImage(
            url: img,
            height: 300,
            width: double.infinity,
            radius: 0,
          )),
    );
  }
}
