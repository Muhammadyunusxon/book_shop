import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import '../../../application/product/product_provider.dart';
import '../../components/components.dart';
import 'widgets/all_products_items.dart';

class SeeAllPage extends ConsumerWidget {
  final String title;
  const SeeAllPage(this.title, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productProvider);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ResponsiveAppBar(title: title),
            33.verticalSpace,
            Expanded(
              child: ListView.builder(
                padding: REdgeInsets.symmetric(horizontal: 24),
                shrinkWrap: true,
                itemCount: state.products.length,
                itemBuilder: (BuildContext context, int index) {
                  return AllItems(
                      img: state.products[index].img ?? '',
                      title: state.products[index].name ?? '',
                      price: state.products[index].price ?? 0,
                      status: state.products[index].status ?? '');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
