// ignore_for_file: iterable_contains_unrelated_type
import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/product/product_provider.dart';
import '../../components/components.dart';
import '../../app_route.dart';
import 'widgets/not_found.dart';
import 'widgets/recently_widget.dart';

class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({super.key});

  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController(text: ref.read(productProvider).query);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final query = ref.watch(productProvider).query;
    final state = ref.watch(productProvider);
    final notifier = ref.read(productProvider.notifier);

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            24.verticalSpace,
            Row(
              children: [
                8.horizontalSpace,
                IconButton(
                  splashRadius: 26.r,
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back, size: 26.r),
                ),
                Expanded(
                    child: CustomTextField(
                  controller: controller,
                  onChanged: (v) => notifier.changeQuery(v),
                  hintText: "Looking for something amazing?",
                  prefixIcon: Padding(
                    padding: REdgeInsets.only(left: 12, right: 8),
                    child: Icon(
                      FlutterRemix.search_line,
                      size: 24.r,
                    ),
                  ),
                  suffixIcon: query.isEmpty
                      ? null
                      : GestureDetector(
                          onTap: () {
                            notifier.changeQuery("");
                            controller.clear();
                          },
                          child: Padding(
                            padding: REdgeInsets.only(left: 8, right: 12),
                            child: Icon(
                              FlutterRemix.close_line,
                              size: 24.r,
                            ),
                          ),
                        ),
                )),
                24.horizontalSpace,
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: REdgeInsets.symmetric(vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (query.isEmpty)
                      RecentlyWidget(onTap: (v) {
                        notifier.changeQuery(v);
                        controller.text = v;
                      }),
                    if (query.isNotEmpty)
                      SizedBox(
                        height: 40.r,
                        child: ListView(
                          padding: REdgeInsets.symmetric(horizontal: 24),
                          scrollDirection: Axis.horizontal,
                          children: [
                            CustomOutlineButton(
                              title: "Filter",
                              isActive: false,
                              icon: Assets.svgFilter,
                              onTap: () => AppRoute.goFilter(context),
                            ),
                            const CustomOutlineButton(
                              title: "Price",
                              isActive: false,
                              icon: Assets.svgSwap,
                            ),
                            const CustomOutlineButton(
                              title: "Promo",
                              isActive: false,
                            ),
                            const CustomOutlineButton(
                              title: "Self Pick-up",
                              isActive: false,
                            ),
                          ],
                        ),
                      ),
                    if (state.searchProducts.isEmpty && query.isNotEmpty)
                      const NotFound(),
                    if (state.searchProducts.isNotEmpty)
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: REdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          // itemCount: state.products.length,
                          itemCount: state.searchProducts.isEmpty
                              ? 0
                              : state.searchProducts.length,
                          itemBuilder: (context, index) {
                            return ProductHorizontal(
                              productData: state.searchProducts[index],
                              onLike: () {
                                ref
                                    .read(productProvider.notifier)
                                    .changeProductLike(
                                        state.searchProducts[index].id);
                              },
                              isLike: state.searchProducts.contains(
                                  state.products[index].id.toString()),
                              index: index,
                            );
                          }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
