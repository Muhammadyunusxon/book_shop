import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../application/payment/payment_provider.dart';
import '../../../components/components.dart';
import '../../../styles/style.dart';

class CardsList extends ConsumerWidget {
  const CardsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final state = ref.watch(paymentEzGroceryProvider);
    final event = ref.read(paymentEzGroceryProvider.notifier);
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: REdgeInsets.symmetric(horizontal: 24),
        shrinkWrap: true,
        itemCount: state.cardList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: REdgeInsets.only(bottom: 18),
            child: ButtonsEffect(
              child: GestureDetector(
                onTap: () {
                  event.setSelectedIndex(index: index);
                },
                child: Container(
                  padding: REdgeInsets.all(24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: Style.white,
                    boxShadow: Style.boxShadow,
                  ),
                  child: Row(
                    children: [
                      // CustomImage(
                      //   url: AppHelper.getCardTypeImage(
                      //       CardUtils.getCardTypeFrmNumber(
                      //           state.cardList[index].number ?? "")),
                      //   height: 45,
                      //   width: 45,
                      //   boxFit: BoxFit.contain,
                      // ),
                      16.horizontalSpace,
                      Text(
                        " •••• •••• •••• ",
                        style: Style.urbanistSemiBold(size: 28),
                      ),
                      Text(
                        (state.cardList[index].number?.length ?? 0) > 16
                            ? state.cardList[index].number?.substring(15) ?? " "
                            : "0000",
                        style: Style.urbanistSemiBold(),
                      ),
                      const Spacer(),
                      Container(
                        padding: REdgeInsets.all(2),
                        height: 20.r,
                        width: 20.r,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Style.primary, width: 2.5)),
                        child: state.selectedIndex == index
                            ? Container(
                                decoration: const BoxDecoration(
                                    color: Style.primary,
                                    shape: BoxShape.circle),
                              )
                            : const SizedBox.shrink(),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
