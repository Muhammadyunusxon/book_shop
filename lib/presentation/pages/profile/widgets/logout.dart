import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import '../../../../application/main/main_provider.dart';
import '../../../../infrastructure/local_storage/g_grocery_storage.dart';
import '../../../components/components.dart';
import '../../../app_route.dart';
import '../../../styles/style.dart';

class Logout extends StatelessWidget {
  const Logout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ModalWrap(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const ModalDrag(),
          12.verticalSpace,
          Text(
            "Logout",
            style: Style.urbanistBold(
                color: Style.error, size: 24),
          ),
          16.verticalSpace,
          Divider(
            color: Style.greyscale200,
            thickness: 1.5.r,
          ),
          20.verticalSpace,
          Text(
            "Are you sure you want to log out?",
            style: Style.urbanistSemiBold(
                color: Style.greyscale800, size: 20),
          ),
          20.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 184.r,
                child: ConfirmButton(
                  onTap: () => Navigator.pop(context),
                  isLoading: false,
                  title: "Cancel",
                  isActive: false,
                ),
              ),
              Consumer(builder: (context, ref, child) {
                return SizedBox(
                  width: 184.r,
                  child: ConfirmButton(
                    onTap: () {
                      LocalStorage.deleteUser();
                      ref.read(mainProvider.notifier).changeIndex(0);
                      AppRoute.goAuth(context);
                    },
                    isLoading: false,
                    title: "Yes, Logout",
                  ),
                );
              }),
            ],
          ),
          28.verticalSpace,
        ],
      ),
    );
  }
}
