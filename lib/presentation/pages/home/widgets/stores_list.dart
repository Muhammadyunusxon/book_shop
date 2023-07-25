import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import '../../../../application/shop/shop_provider.dart';
import '../../../components/components.dart';
import '../../../app_route.dart';
import '../../../styles/style.dart';

class StoresList extends ConsumerWidget {
  const StoresList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final state = ref.watch(shopProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: REdgeInsets.symmetric(horizontal: 24),
          child:
              Text("Stores", style: Style.urbanistSemiBold(size: 18)),
        ),
        8.verticalSpace,
        SizedBox(
          height: 350.r,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: REdgeInsets.symmetric(horizontal: 24, vertical: 12),
              scrollDirection: Axis.horizontal,
              itemCount: state.shops.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () =>
                      AppRoute.goToShopPage(context, index: index),
                  child: StoreHorizontal(
                    shopData: state.shops[index],
                    onLike: () {
                      ref
                          .read(shopProvider.notifier)
                          .changeShopLike(state.shops[index].id);
                    },
                    isLike: state.shopLikes
                        .contains(state.shops[index].id.toString()),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
