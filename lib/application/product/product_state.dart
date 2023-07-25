// ignore_for_file: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../infrastructure/models/models.dart';
part 'product_state.freezed.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    @Default(false) bool isLoading,
    @Default([]) List<String> productLikes,
    @Default([]) List<ProductData> products,
    @Default('') String query,
    @Default([]) List<ProductData> searchProducts,
    @Default(0) int count,
    @Default(0) int totalPrice,
    @Default(0) int totalCartPrice,
    @Default([false, false, false, false]) List<bool> selectFilters,
  }) = _ProductState;
}
