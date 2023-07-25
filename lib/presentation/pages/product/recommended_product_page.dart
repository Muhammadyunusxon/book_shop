import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/home/home_provider.dart';
import '../../../application/product/product_provider.dart';
import '../../components/components.dart';

class RecommendedProductPage extends ConsumerWidget {
  const RecommendedProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final productState = ref.watch(productProvider);
    final homeState = ref.watch(homeProvider);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const ResponsiveAppBar(title: "Recommended For You 😍"),
            8.verticalSpace,
            SizedBox(
              height: 40.r,
              child: ListView.builder(
                  padding: REdgeInsets.symmetric(horizontal: 24),
                  itemCount: homeState.categories.length + 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CustomOutlineButton(
                      title: index == 0
                          ? "All"
                          : homeState.categories[index - 1].title ?? "",
                      isActive: index == 0 ? true : false,
                    );
                  }),
            ),
            8.verticalSpace,
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  padding:
                      REdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  itemCount: productState.products.length,
                  itemBuilder: (context, index) {
                    return ButtonsEffect(
                      child: ProductHorizontal(
                        productData: productState.products[index],
                        onLike: () {
                          ref.read(productProvider.notifier).changeProductLike(
                              productState.products[index].id);
                        },
                        isLike: productState.productLikes.contains(
                            productState.products[index].id.toString()),
                        index: index,
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
