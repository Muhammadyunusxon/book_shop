import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import '../../../../application/product/product_provider.dart';
import '../../../../application/home/home_provider.dart';
import '../../../components/components.dart';
import '../../../styles/style.dart';
import '../../../app_route.dart';

class RecommendedProducts extends ConsumerWidget {
  const RecommendedProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final productState = ref.watch(productProvider);
    final homeState = ref.watch(homeProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: REdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              Expanded(
                child: Text("Recommended For You 😍",
                    style: Style.urbanistSemiBold(size: 18)),
              ),
              TextButton(
                  onPressed: () {
                    AppRoute.goRecommendedProductPage(context);
                  },
                  child: Text(
                    'See All',
                    style: Style.urbanistSemiBold(
                        color: Style.primary),
                  ))
            ],
          ),
        ),
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
        ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: REdgeInsets.symmetric(horizontal: 24, vertical: 12),
            itemCount: productState.products.isEmpty ? 0 : 5,
            itemBuilder: (context, index) {
              return ProductHorizontal(
                productData: productState.products[index],
                onLike: () {
                  ref
                      .read(productProvider.notifier)
                      .changeProductLike(productState.products[index].id);
                },
                isLike: productState.productLikes
                    .contains(productState.products[index].id.toString()),
                index: index,
              );
            }),
      ],
    );
  }
}
