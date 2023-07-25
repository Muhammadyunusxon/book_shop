// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../infrastructure/models/models.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    @Default([]) List<CartlData> cartList,
    @Default(0) int totalPrice,
    @Default(true) bool isEmpty,
  }) = _CardState;
}
