// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../infrastructure/models/friends_data.dart';
import '../../infrastructure/models/shop_data.dart';
part 'shop_state.freezed.dart';

@freezed
class ShopState with _$ShopState {
  const factory ShopState({
    @Default([]) List<ShopData> shops,
    @Default([]) List<String> shopLikes,
    @Default(['5', '4', '3', '2', '1']) List listOfNums,
    @Default(0) int selectedIndex,
    @Default([]) List<FriendsData> friends,
  }) = _ShopState;
}
