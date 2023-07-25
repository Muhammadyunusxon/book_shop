import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../application/notification/notification_provider.dart';
import '../../components/components.dart';
import 'widgets/notification_item.dart';

class NotificationPage extends ConsumerWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final state = ref.watch(notificationProvider);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ResponsiveAppBar(
              title: "Notification",
              suffix: IconButton(
                  splashRadius: 24,
                  onPressed: () {},
                  icon: SvgPicture.asset(Assets.svgMoreCircle)),
            ),
            Expanded(
              child: ListView.builder(
                  padding: REdgeInsets.symmetric(horizontal: 24,vertical: 12),
                  shrinkWrap: true,
                  itemCount: state.notifications.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: REdgeInsets.only(bottom: 24),
                      child: NotificationItem(
                        notificationData: state.notifications[index],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
