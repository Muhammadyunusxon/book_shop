import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/shop/shop_provider.dart';
import '../../components/components.dart';
import 'widgets/shop_widget.dart';

class FavouriteShopsPage extends ConsumerWidget {
  const FavouriteShopsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final shops = ref.watch(shopProvider).shops;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ResponsiveAppBar(
              title: "My Favorite Stores",
              suffix: IconButton(
                  splashRadius: 26.r,
                  onPressed: () {},
                  icon: const Icon(FlutterRemix.search_2_line)),
            ),
            ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: REdgeInsets.symmetric(horizontal: 24),
                shrinkWrap: true,
                itemCount: shops.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: REdgeInsets.only(bottom: 12),
                    child: ShopWidget(
                      shop: shops[index],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
