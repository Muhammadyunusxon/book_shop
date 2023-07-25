// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<String> get productLikes => throw _privateConstructorUsedError;
  List<ProductData> get products => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  List<ProductData> get searchProducts => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get totalPrice => throw _privateConstructorUsedError;
  int get totalCartPrice => throw _privateConstructorUsedError;
  List<bool> get selectFilters => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<String> productLikes,
      List<ProductData> products,
      String query,
      List<ProductData> searchProducts,
      int count,
      int totalPrice,
      int totalCartPrice,
      List<bool> selectFilters});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? productLikes = null,
    Object? products = null,
    Object? query = null,
    Object? searchProducts = null,
    Object? count = null,
    Object? totalPrice = null,
    Object? totalCartPrice = null,
    Object? selectFilters = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      productLikes: null == productLikes
          ? _value.productLikes
          : productLikes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductData>,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      searchProducts: null == searchProducts
          ? _value.searchProducts
          : searchProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductData>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalCartPrice: null == totalCartPrice
          ? _value.totalCartPrice
          : totalCartPrice // ignore: cast_nullable_to_non_nullable
              as int,
      selectFilters: null == selectFilters
          ? _value.selectFilters
          : selectFilters // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductStateCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$_ProductStateCopyWith(
          _$_ProductState value, $Res Function(_$_ProductState) then) =
      __$$_ProductStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<String> productLikes,
      List<ProductData> products,
      String query,
      List<ProductData> searchProducts,
      int count,
      int totalPrice,
      int totalCartPrice,
      List<bool> selectFilters});
}

/// @nodoc
class __$$_ProductStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_ProductState>
    implements _$$_ProductStateCopyWith<$Res> {
  __$$_ProductStateCopyWithImpl(
      _$_ProductState _value, $Res Function(_$_ProductState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? productLikes = null,
    Object? products = null,
    Object? query = null,
    Object? searchProducts = null,
    Object? count = null,
    Object? totalPrice = null,
    Object? totalCartPrice = null,
    Object? selectFilters = null,
  }) {
    return _then(_$_ProductState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      productLikes: null == productLikes
          ? _value._productLikes
          : productLikes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductData>,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      searchProducts: null == searchProducts
          ? _value._searchProducts
          : searchProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductData>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalCartPrice: null == totalCartPrice
          ? _value.totalCartPrice
          : totalCartPrice // ignore: cast_nullable_to_non_nullable
              as int,
      selectFilters: null == selectFilters
          ? _value._selectFilters
          : selectFilters // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ));
  }
}

/// @nodoc

class _$_ProductState implements _ProductState {
  const _$_ProductState(
      {this.isLoading = false,
      final List<String> productLikes = const [],
      final List<ProductData> products = const [],
      this.query = '',
      final List<ProductData> searchProducts = const [],
      this.count = 0,
      this.totalPrice = 0,
      this.totalCartPrice = 0,
      final List<bool> selectFilters = const [false, false, false, false]})
      : _productLikes = productLikes,
        _products = products,
        _searchProducts = searchProducts,
        _selectFilters = selectFilters;

  @override
  @JsonKey()
  final bool isLoading;
  final List<String> _productLikes;
  @override
  @JsonKey()
  List<String> get productLikes {
    if (_productLikes is EqualUnmodifiableListView) return _productLikes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productLikes);
  }

  final List<ProductData> _products;
  @override
  @JsonKey()
  List<ProductData> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey()
  final String query;
  final List<ProductData> _searchProducts;
  @override
  @JsonKey()
  List<ProductData> get searchProducts {
    if (_searchProducts is EqualUnmodifiableListView) return _searchProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchProducts);
  }

  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final int totalPrice;
  @override
  @JsonKey()
  final int totalCartPrice;
  final List<bool> _selectFilters;
  @override
  @JsonKey()
  List<bool> get selectFilters {
    if (_selectFilters is EqualUnmodifiableListView) return _selectFilters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectFilters);
  }

  @override
  String toString() {
    return 'ProductState(isLoading: $isLoading, productLikes: $productLikes, products: $products, query: $query, searchProducts: $searchProducts, count: $count, totalPrice: $totalPrice, totalCartPrice: $totalCartPrice, selectFilters: $selectFilters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._productLikes, _productLikes) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality()
                .equals(other._searchProducts, _searchProducts) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.totalCartPrice, totalCartPrice) ||
                other.totalCartPrice == totalCartPrice) &&
            const DeepCollectionEquality()
                .equals(other._selectFilters, _selectFilters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_productLikes),
      const DeepCollectionEquality().hash(_products),
      query,
      const DeepCollectionEquality().hash(_searchProducts),
      count,
      totalPrice,
      totalCartPrice,
      const DeepCollectionEquality().hash(_selectFilters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductStateCopyWith<_$_ProductState> get copyWith =>
      __$$_ProductStateCopyWithImpl<_$_ProductState>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {final bool isLoading,
      final List<String> productLikes,
      final List<ProductData> products,
      final String query,
      final List<ProductData> searchProducts,
      final int count,
      final int totalPrice,
      final int totalCartPrice,
      final List<bool> selectFilters}) = _$_ProductState;

  @override
  bool get isLoading;
  @override
  List<String> get productLikes;
  @override
  List<ProductData> get products;
  @override
  String get query;
  @override
  List<ProductData> get searchProducts;
  @override
  int get count;
  @override
  int get totalPrice;
  @override
  int get totalCartPrice;
  @override
  List<bool> get selectFilters;
  @override
  @JsonKey(ignore: true)
  _$$_ProductStateCopyWith<_$_ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}
