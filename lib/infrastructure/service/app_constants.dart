import 'package:flutter_remix/flutter_remix.dart';

class AppConstants {
  AppConstants._();

  /// social sign-in
  static const socialSignIn = [
    FlutterRemix.google_fill,
    FlutterRemix.facebook_fill,
    FlutterRemix.apple_fill,
  ];
  static const String signInPassword = "1232";
  static const String baseUrl = "http://e-bookshop.uz";

  /// location
  static const double demoLatitude = 41.304223;
  static const double demoLongitude = 69.2348277;
  static const double pinLoadingMin = 0.116666667;
  static const double pinLoadingMax = 0.611111111;

  ///refresh duration
  static const Duration timeRefresh = Duration(seconds: 30);

  /// shared preferences keys
  static const String keyToken = 'keyTokenGrocery';
  static const String keyUser = 'keyUserGrocery';
  static const String keyProductLike = 'keyProductLikeGrocery';
  static const String keyShopLike = 'keyShopLikeGrocery';
  static const String keySocialLike = 'keySocialLikeGrocery';
  static const String keyMessage = 'keyMessageGrocery';
  static const String keyCard = 'keyCardGrocery';
  static const String keyCartCounts = 'keyCartCountsGrocery';
  static const String keyBank = 'keyBankGrocery';
}
