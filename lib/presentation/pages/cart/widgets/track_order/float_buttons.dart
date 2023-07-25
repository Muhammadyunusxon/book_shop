import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../application/chat/chat_provider.dart';
import '../../../../../application/shop/shop_provider.dart';
import '../../../../components/components.dart';
import '../../../../app_route.dart';
import '../../../../styles/style.dart';

class FloatingButtons extends StatelessWidget {
  const FloatingButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ButtonsEffect(
            child: GestureDetector(
              onTap: () => AppRoute.goToCancelOrderPage(context),
              child: Container(
                padding: REdgeInsets.all(20),
                decoration: BoxDecoration(
                    gradient: Style.sunsetOrangeGradiant,
                    shape: BoxShape.circle),
                child: Icon(
                  FlutterRemix.close_line,
                  color: Style.white,
                  size: 32.r,
                ),
              ),
            ),
          ),
          24.horizontalSpace,
          ButtonsEffect(
            child: Consumer(
              builder: (context, ref, child) {
                return GestureDetector(
                  onTap: () {
                    ref
                        .read(chatProvider.notifier)
                        .selectShop(ref.watch(shopProvider).shops.last);
                    AppRoute.goChat(context);
                  },
                  child: Container(
                      padding: REdgeInsets.all(20),
                      decoration: BoxDecoration(
                          gradient: Style.primaryGradiant,
                          shape: BoxShape.circle),
                      child: SvgPicture.asset(
                        Assets.svgChatFilled,
                        height: 32.r,
                        width: 32.r,
                      )),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
