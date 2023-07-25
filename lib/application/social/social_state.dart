// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/models/shop_data.dart';
import '../../infrastructure/models/social.data.dart';

part 'social_state.freezed.dart';

@freezed
class SocialState with _$SocialState {
  const factory SocialState({
    @Default([]) List<ShopData> shops,
    @Default([]) List<SocialData> socials,
    @Default(0) int currentIndex,
     @Default([]) List<String> socialLikes,
  }) = _SocialState;
}
