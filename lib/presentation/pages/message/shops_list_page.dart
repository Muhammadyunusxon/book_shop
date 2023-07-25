import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import '../../../application/chat/chat_provider.dart';
import '../../../application/shop/shop_provider.dart';
import '../../components/components.dart';
import '../../app_route.dart';
import '../shop/widgets/shop_widget.dart';

class ShopsListPage extends ConsumerWidget {
  const ShopsListPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final shops = ref.watch(shopProvider).shops;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const ResponsiveAppBar(title: 'Shops'),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: REdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  itemCount: shops.isEmpty ? 0 : shops.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        ref
                            .read(chatProvider.notifier)
                            .selectShop(shops[index]);

                        AppRoute.goChat(context);
                      },
                      child: ShopWidget(shop: shops[index]),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
