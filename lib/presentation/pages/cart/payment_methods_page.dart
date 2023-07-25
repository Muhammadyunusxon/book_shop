import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../application/payment/payment_provider.dart';
import '../../components/components.dart';
import '../../app_route.dart';
import 'widgets/cards_list.dart';
import 'widgets/g_credits_items.dart';

class PaymentMethodsPage extends ConsumerStatefulWidget {
  const PaymentMethodsPage({Key? key}) : super(key: key);

  @override
  ConsumerState<PaymentMethodsPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends ConsumerState<PaymentMethodsPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(paymentEzGroceryProvider.notifier).initial();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ResponsiveAppBar(
              title: "Payment Methods",
              suffix: IconButton(
                  splashRadius: 26.r,
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    Assets.svgScan,
                    height: 24.r,
                    width: 24.r,
                  )),
            ),
            const GCredits(),
            18.verticalSpace,
            const CardsList(),
            24.verticalSpace,
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 24),
              child: ConfirmButton(
                  isActive: false,
                  onTap: () {
                    AppRoute.goAddCard(context);
                  },
                  isLoading: false,
                  title: "Add New Card"),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: REdgeInsets.symmetric(horizontal: 24),
        child:
            ConfirmButton(onTap: () => Navigator.pop(context), title: 'Apply'),
      ),
    );
  }
}
