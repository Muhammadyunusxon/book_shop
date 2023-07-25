import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/notification/notification_provider.dart';
import '../../components/components.dart';
import 'widgets/notification_switch.dart';

class NotificationSettingsPage extends ConsumerWidget {
  const NotificationSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final notifier = ref.read(notificationProvider.notifier);
    final state = ref.watch(notificationProvider);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const ResponsiveAppBar(title: "Notification"),
            Expanded(
                child: SingleChildScrollView(
              padding: REdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  NotificationSwitch(
                    title: 'General Notification',
                    isActive: state.isGeneral,
                    onChanged: notifier.changeGeneral,
                  ),
                  15.verticalSpace,
                  NotificationSwitch(
                    title: 'Special Offers',
                    isActive: state.isOffer,
                    onChanged: notifier.changeOffer,
                  ),
                  15.verticalSpace,
                  NotificationSwitch(
                    title: 'Promo & Discount',
                    isActive: state.isPromo,
                    onChanged: notifier.changePromo,
                  ),
                  15.verticalSpace,
                  NotificationSwitch(
                    title: 'Payments',
                    isActive: state.isPayment,
                    onChanged: notifier.changePayment,
                  ),
                  15.verticalSpace,
                  NotificationSwitch(
                    title: 'Cashback',
                    isActive: state.isCashback,
                    onChanged: notifier.changeCashback,
                  ),
                  15.verticalSpace,
                  NotificationSwitch(
                    title: 'App Updates',
                    isActive: state.isUpdate,
                    onChanged: notifier.changeUpdate,
                  ),
                  15.verticalSpace,
                  NotificationSwitch(
                    title: 'New Service Available',
                    isActive: state.isNewService,
                    onChanged: notifier.changeNewService,
                  ),
                  15.verticalSpace,
                  NotificationSwitch(
                    title: 'New Tips Available',
                    isActive: state.isNewTips,
                    onChanged: notifier.changeNewTips,
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
