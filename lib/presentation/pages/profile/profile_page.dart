import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../../../infrastructure/local_storage/g_grocery_storage.dart';
import '../../app_route.dart';
import '../../styles/style.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = LocalStorage.getUser();
    return user == null
        ? Center(
            child: TextButton(
              onPressed: () => AppRoute.goSplash(context),
              child: const Text("Sign in or Sign up"),
            ),
          )
        : Padding(
            padding: REdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Profile",
                        style: Style.urbanistBold(size: 24),
                      ),
                    ),
                    IconButton(
                      splashRadius: 28.r,
                      onPressed: () {},
                      icon: SvgPicture.asset(Assets.svgMoreCircle),
                    ),
                  ],
                ),
                // Expanded(
                //   child: SingleChildScrollView(
                //     physics: const BouncingScrollPhysics(),
                //     child: Column(
                //       children: [
                //         32.verticalSpace,
                //         CustomImage(
                //           url: user.img,
                //           height: 90,
                //           width: 90,
                //           radius: 100,
                //         ),
                //         18.verticalSpace,
                //         Text(
                //           "${user.firstName ?? ""} ${user.lastName ?? ""}",
                //           style: Style.urbanistBold(
                //               color: Style.black),
                //         ),
                //         5.verticalSpace,
                //         user.email == null
                //             ? const SizedBox.shrink()
                //             : Text(
                //                 "${user.email}",
                //                 style: Style.urbanistMedium(size: 14),
                //               ),
                //         user.phoneNumber == null
                //             ? const SizedBox.shrink()
                //             : Text(
                //                 "+${user.phoneNumber?.countryCode ?? ""} ${user.phoneNumber?.getFormattedNsn(isoCode: user.phoneNumber?.isoCode) ?? ""}",
                //                 style: Style.urbanistMedium(
                //                     color: Style.greyscale800),
                //               ),
                //         33.verticalSpace,
                //         Row(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children: [
                //             RowItems(
                //                 onTap: () =>
                //                     AppRoute.goNotificationSettings(
                //                         context),
                //                 icon: Assets.gGroceryNotificationGrocery,
                //                 title: 'Notification'),
                //             16.horizontalSpace,
                //             RowItems(
                //                 onTap: () =>
                //                     AppRoute.goToDiscountPage(context),
                //                 icon: Assets.gGroceryVaucher,
                //                 title: 'Voucher'),
                //             16.horizontalSpace,
                //             RowItems(
                //                 onTap: () =>
                //                     AppRoute.goFavouriteStores(context),
                //                 icon: Assets.gGroceryFavoriteGrocery,
                //                 title: 'Wishlist')
                //           ],
                //         ),
                //         16.verticalSpace,
                //         ColumnItems(
                //             onTap: () =>
                //                 AppRoute.goUpdateProfile(context),
                //             icon: Assets.gGroceryProfileGrocery,
                //             title: 'My Profile'),
                //         16.verticalSpace,
                //         ColumnItems(
                //             onTap: () =>
                //                 AppRoute.goNotificationSettings(context),
                //             icon: Assets.gGrocerySettingGrocery,
                //             title: 'Notification Setting'),
                //         16.verticalSpace,
                //         ColumnItems(
                //             onTap: () => AppHelper.showCustomModalBottomSheet(
                //                 paddingTop:
                //                     MediaQuery.of(context).size.height / 2,
                //                 context: context,
                //                 modal: const Logout()),
                //             icon: Assets.gGroceryLogoutGrocery,
                //             title: 'Log Out')
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          );
  }
}
