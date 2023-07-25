import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../infrastructure/local_storage/g_grocery_storage.dart';
import '../../../../app_route.dart';
import '../../../../components/buttons/confirm_button.dart';
import '../../../../styles/style.dart';

class ConfirmButtons extends StatelessWidget {
  const ConfirmButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Expanded(
              child: ConfirmButton(
            color: Style.secondary200,
            onTap: () {
              LocalStorage.clearCart();
              AppRoute.goMain(context);
            },
            title: 'Cancel',
            isActive: false,
          )),
          12.horizontalSpace,
          Expanded(
              child: ConfirmButton(
                  onTap: () {
                    LocalStorage.clearCart();
                    AppRoute.goMain(context);
                  },
                  title: 'Submit'))
        ],
      ),
    );
  }
}
