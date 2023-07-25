import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

import '../../../application/cart/cart_provider.dart';
import '../../../application/product/product_provider.dart';
import '../../components/components.dart';
import '../../app_route.dart';
import 'widgets/delivery_locations.dart';
import 'widgets/orders_summary.dart';
import 'widgets/payment_mehods_and_discounts.dart';
import 'widgets/total_calculation.dart';

class CartPage extends ConsumerStatefulWidget {
  const CartPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CartPageState();
}

class _CartPageState extends ConsumerState<CartPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(cartProvider.notifier)
          .getCarts(ref.watch(productProvider).products);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(cartProvider);

    return Scaffold(
      body: state.isEmpty
          ? Center(child: LottieBuilder.asset(Assets.lottieNoItems))
          : SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: REdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      33.verticalSpace,
                      const DeliveryLocations(),
                      28.verticalSpace,
                      const OrdersSummary(),
                      28.verticalSpace,
                      const PaymentMethodsAndDiscounts(),
                      28.verticalSpace,
                      TotalPrice(totalPrice: state.totalPrice),
                      100.verticalSpace
                    ],
                  ),
                ),
              ),
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: state.isEmpty
          ? const SizedBox.shrink()
          : Padding(
              padding: REdgeInsets.symmetric(horizontal: 24),
              child: ConfirmButton(
                  onTap: () => AppRoute.goToTrackOrderPage(context,
                      totalPrice: state.totalPrice + 3000),
                  title:
                      'Place Order - ${NumberFormat.currency(locale: 'en_US', symbol: "\$", decimalDigits: 0).format(state.totalPrice + 3000)}'),
            ),
    );
  }
}
