import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

import '../../../application/product/product_provider.dart';
import '../../components/components.dart';
import '../../app_route.dart';

class CategoryProductPage extends ConsumerWidget {
  final String? title;

  const CategoryProductPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final state = ref.watch(productProvider);
    final notifier = ref.read(productProvider.notifier);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ResponsiveAppBar(title: title ?? ""),
            8.verticalSpace,
            SizedBox(
              height: 40.r,
              child: ListView(
                padding: REdgeInsets.symmetric(horizontal: 24),
                scrollDirection: Axis.horizontal,
                children: [
                  CustomOutlineButton(
                    title: "Filter",
                    isActive: state.selectFilters[0],
                    icon: Assets.svgFilter,
                    onTap: () {
                      notifier.changeFilter(0);
                      AppRoute.goFilter(context);
                    },
                  ),
                  CustomOutlineButton(
                    title: "Sort",
                    isActive: state.selectFilters[1],
                    icon: Assets.svgSwap,
                    onTap: () => notifier.changeFilter(1),
                  ),
                  CustomOutlineButton(
                    title: "Promo",
                    isActive: state.selectFilters[2],
                    onTap: () => notifier.changeFilter(2),
                  ),
                  CustomOutlineButton(
                    title: "Self Pick-up",
                    isActive: state.selectFilters[3],
                    onTap: () => notifier.changeFilter(3),
                  ),
                ],
              ),
            ),
            8.verticalSpace,
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  padding:
                      REdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  itemCount: state.products.length,
                  itemBuilder: (context, index) {
                    return ProductHorizontal(
                      productData: state.products[index],
                      onLike: () {
                        ref
                            .read(productProvider.notifier)
                            .changeProductLike(state.products[index].id);
                      },
                      isLike: state.productLikes
                          .contains(state.products[index].id.toString()),
                      index: index,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
