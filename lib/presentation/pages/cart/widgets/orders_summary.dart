import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import '../../../../application/cart/cart_provider.dart';
import '../../../components/components.dart';
import '../../../app_route.dart';
import '../../../styles/style.dart';
import 'cart_product.dart';

class OrdersSummary extends StatelessWidget {
  const OrdersSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Style.white,
        boxShadow: Style.boxShadow,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          24.verticalSpace,
          Row(
            children: [
              Text(
                'Order Summary',
                style: Style.urbanistBold(size: 20),
              ),
              const Spacer(),
              ButtonsEffect(
                child: GestureDetector(
                  onTap: () => AppRoute.goRecommendedProductPage(context),
                  child: Container(
                    padding: REdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Style.primary, width: 2),
                        borderRadius: BorderRadius.circular(100)),
                    child: Text(
                      'Add Items',
                      style: Style.urbanistMedium(
                          size: 14, color: Style.primary),
                    ),
                  ),
                ),
              )
            ],
          ),
          24.verticalSpace,
          Consumer(
            builder: (context, ref, child) {
              final state = ref.watch(cartProvider);
              return ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: state.cartList.length,
                itemBuilder: (BuildContext context, int index) {
                  return CartProduct(
                    cartProduct: state.cartList[index],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
