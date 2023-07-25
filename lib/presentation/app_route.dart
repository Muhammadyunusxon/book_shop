import 'package:book_shop/application/credit/credit_provider.dart';
import 'package:book_shop/application/notification/notification_provider.dart';
import 'package:book_shop/application/shop/shop_provider.dart';

import 'pages/address/select_address_page.dart';
import 'pages/cart/cart_page.dart';
import 'pages/cart/get_discounts_page.dart';
import 'pages/cart/payment_methods_page.dart';
import 'pages/cart/store_rate_page.dart';
import 'pages/cart/track_order_page.dart';
import 'pages/cart/widgets/track_order/cancel_order_page.dart';
import 'pages/home/widgets/story_page.dart';
import 'pages/search/filter_page.dart';
import 'pages/search/search_page.dart';
import 'pages/message/chat_page.dart';
import 'pages/auth/sign_in_phone_page.dart';
import 'pages/auth/sign_up_page.dart';
import 'pages/auth/verification_page.dart';
import 'pages/category/category_page.dart';
import 'pages/initial/splash_page.dart';
import 'pages/main/main_page.dart';
import 'pages/message/shops_list_page.dart';
import 'pages/notification/notification_page.dart';
import 'pages/payment/add_card_page.dart';
import 'pages/product/recommended_product_page.dart';
import 'pages/profile/fill_profile_page.dart';
import 'pages/address/address_page.dart';
import 'pages/settings/help_center_page.dart';
import 'pages/shop/all_products_page.dart';
import 'pages/shop/available_discounts_page.dart';
import 'pages/shop/contact_seller_page.dart';
import 'pages/product/product_page.dart';
import 'pages/shop/reviews_page.dart';
import 'pages/shop/shop_page.dart';
import 'pages/social/social_page.dart';
import 'pages/credits/add_pin_code_page.dart';
import 'pages/credits/bank_account_page.dart';
import 'pages/credits/refund_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'pages/credits/add_bank_page.dart';
import 'pages/shop/favourite_shops_page.dart';
import 'pages/category/category_product_page.dart';
import 'pages/payment/payment_page.dart';
import 'pages/settings/invite_friends_page.dart';
import 'pages/settings/notification_settings.dart';
import 'pages/social/widgets/stories.dart';
import 'pages/credits/credits_page.dart';

abstract class AppRoute {
  AppRoute._();

  static goSplash(BuildContext context) =>
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (_) => const SplashPage(),
        ),
        (route) => false,
      );

  static goAuth(BuildContext context) =>
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (_) => const SignInPhonePage(),
        ),
        (route) => false,
      );

  static goFillProfile(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const FillProfilePage(),
        ),
      );

  static goMain(BuildContext context) =>
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (_) => const MainPage(),
        ),
        (route) => false,
      );

  static goSignInPhone(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const SignInPhonePage(),
        ),
      );

  static goSignUp(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const SignUpPage(),
        ),
      );

  static goVerification(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const VerificationPage(),
        ),
      );

  static goMoreCategory(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const CategoryPage(),
        ),
      );

  static goRecommendedProductPage(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const RecommendedProductPage(),
        ),
      );

  static goCategoryProductPage(BuildContext context, String? title) =>
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => CategoryProductPage(title: title),
        ),
      );

  static goUpdateProfile(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const FillProfilePage(
            isUpdate: true,
          ),
        ),
      );

  static goNotification(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => Consumer(builder: (context, ref, child) {
            ref.read(notificationProvider.notifier).getNotifications();
            return const NotificationPage();
          }),
        ),
      );

  static goToShopsList(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const ShopsListPage(),
        ),
      );

  static goToSocialsPage(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const SocialPage(),
        ),
      );

  static goPayment(BuildContext context, [bool isRemember = true]) {
    if (isRemember) {
      return Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const PaymentPage(),
        ),
      );
    } else {
      return Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (_) => const PaymentPage(),
          ),
          (route) => false);
    }
  }

  static goStoryPage(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const StoryPage(),
        ),
      );

  static goToShopPage(BuildContext context, {int? index}) =>
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => ShopPage(index ?? 0),
        ),
      );

  static goToDiscountPage(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const DiscountsPage(),
        ),
      );

  static goToSellerContactPage(BuildContext context) =>
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const ContactSellerPage(),
        ),
      );

  static goAddCard(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const AddCardPage(),
        ),
      );

  static goFavouriteStores(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const FavouriteShopsPage(),
        ),
      );

  static goAddress(BuildContext context, {bool isSave = false}) =>
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => AddressPage(isSave: isSave),
        ),
      );

  static goNotificationSettings(BuildContext context) =>
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const NotificationSettingsPage(),
        ),
      );

  static goInviteFriends(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const InviteFriendsPage(),
        ),
      );

  static goToProductPage(BuildContext context, {required int index}) =>
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => ProductPage(index),
        ),
      );

  static goCredits(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => Consumer(builder: (context, ref, child) {
            ref.read(creditProvider.notifier).initial();
            return const CreditsPage();
          }),
        ),
      );

  static goRefund(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const RefundPage(),
        ),
      );

  static goAddBank(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const AddBankPage(),
        ),
      );

  static goChooseBank(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const BankAccountPage(),
        ),
      );

  static goPinCodePage(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const AddPinCodePage(),
        ),
      );

  static goToReviewsPage(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => Consumer(builder: (context, ref, child) {
            ref.read(shopProvider.notifier).getUsers();
            return const ReviewsPage();
          }),
        ),
      );

  static goToSeeAllPage(BuildContext context, {required String title}) =>
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => SeeAllPage(title),
        ),
      );

  static goHelpCenter(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const HelpCenterPage(),
        ),
      );

  static goChat(BuildContext context) {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const ChatPage()),
    );
  }

  static goSearch(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const SearchPage()),
      );

  static goFilter(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const FilterPage()),
      );

  static goToCartPage(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const CartPage(),
        ),
      );

  static goSelectAddress(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => SelectAddressPage(
            onSave: () => Navigator.pop(context),
          ),
        ),
      );

  static goAddAddress(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => SelectAddressPage(
            onSave: () => AppRoute.goMain(context),
          ),
        ),
      );

  static goToPaymentsPage(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const PaymentMethodsPage(),
        ),
      );

  static goToGetDiscountsPage(BuildContext context) =>
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const GetDiscountsPage(),
        ),
      );

  static goToTrackOrderPage(BuildContext context, {int? totalPrice}) =>
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => TrackOrderPage(
            totalPrice: totalPrice,
          ),
        ),
      );

  static goToCancelOrderPage(BuildContext context) =>
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const CancelOrderPage(),
        ),
      );

  static goToRateStorePage(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const RateStorePage(),
        ),
      );

  static goToHomeStoryPage(
    BuildContext context, {
    required String image,
    required String title,
  }) =>
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => HomeStoryPage(image, title),
        ),
      );
}
