import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../application/shop/shop_provider.dart';
import '../../../../components/components.dart';
import '../../../../styles/style.dart';
import 'cancel_dialog.dart';

class CancelOrderPage extends StatelessWidget {
  const CancelOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List lst = [
      'Waiting for long time',
      'Unable to contact vendor',
      'Store denied to deliver to destination',
      'Wrong address shown',
      'The price is not reasonable',
      'I want to order another store',
      'I just want to cancel'
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const ResponsiveAppBar(title: 'Cancel Order'),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: REdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      33.verticalSpace,
                      Text(
                        'Please select the reason for cancellation:',
                        style: Style.urbanistMedium(size: 18),
                      ),
                      24.verticalSpace,
                      const Divider(
                        color: Style.greyscale400,
                      ),
                      24.verticalSpace,
                      Consumer(
                        builder: (context, ref, child) {
                          final event = ref.read(shopProvider.notifier);
                          final state = ref.watch(shopProvider);
                          return ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: lst.length,
                            itemBuilder: (BuildContext context, int index) {
                              return ButtonsEffect(
                                child: GestureDetector(
                                  onTap: () =>
                                      event.setSelectedIndex(index: index),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: REdgeInsets.only(bottom: 24),
                                        child: CircleButton(
                                            isSelected:
                                                state.selectedIndex == index,
                                            onTap: () => event.setSelectedIndex(
                                                index: index)),
                                      ),
                                      16.horizontalSpace,
                                      Padding(
                                        padding: REdgeInsets.only(bottom: 24),
                                        child: Text(
                                          lst[index],
                                          style:
                                              Style.urbanistSemiBold(
                                                  size: 18),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      24.verticalSpace,
                      Text(
                        'Others',
                        style: Style.urbanistBold(),
                      ),
                      20.verticalSpace,
                      const CustomTextField(
                        isPadding: true,
                        hintText: 'Others reason...',
                      ),
                      150.verticalSpace,
                    ],
                  ),
                ),
              ),
            )
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
                  builder: (_) => const Dialog(
                        backgroundColor: Style.transparent,
                        child: CancelDialog(),
                      ));
            },
            title: 'Submit'),
      ),
    );
  }
}
