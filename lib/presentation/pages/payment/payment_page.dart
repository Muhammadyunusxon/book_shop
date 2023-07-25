import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../application/payment/payment_provider.dart';
import '../../components/components.dart';
import '../../app_route.dart';
import 'widgets/card_list.dart';

class PaymentPage extends ConsumerStatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  ConsumerState<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends ConsumerState<PaymentPage> {
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
            const CardList(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: REdgeInsets.symmetric(horizontal: 24),
        child: ConfirmButton(
            onTap: () => AppRoute.goAddCard(context),
            isLoading: false,
            title: "Add New Card"),
      ),
    );
  }
}
