import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../../../application/credit/credit_provider.dart';
import '../../components/components.dart';
import '../../app_route.dart';
import '../../styles/style.dart';
import 'widgets/bank_item.dart';
import 'widgets/success_dialog.dart';

class BankAccountPage extends ConsumerWidget {
  const BankAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final notifier = ref.read(creditProvider.notifier);
    final state = ref.watch(creditProvider);
    return Scaffold(
      backgroundColor: Style.white,
      body: SafeArea(
        child: Column(
          children: [
            ResponsiveAppBar(
              title: "Choose Bank Account",
              suffix: IconButton(
                splashRadius: 28.r,
                onPressed: () {},
                icon: SvgPicture.asset(
                  Assets.svgScan,
                ),
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              padding: REdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.banks.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return BankItem(
                          bankData: state.banks[index],
                          isActive: state.selectBank == index,
                          onSelect: () => notifier.changeBank(index),
                          isDefault: index == 0,
                        );
                      }),
                  ConfirmButton(
                    onTap: () => AppRoute.goAddBank(context),
                    isActive: false,
                    title: "Add New Account",
                  )
                ],
              ),
            ))
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: REdgeInsets.symmetric(horizontal: 24),
        child: ConfirmButton(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (_) {
                    return const Dialog(
                      backgroundColor: Style.transparent,
                      child: SuccessDialog(),
                    );
                  });
            },
            isLoading: false,
            title: "Continue"),
      ),
    );
  }
}
