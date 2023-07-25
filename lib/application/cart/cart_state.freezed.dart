// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartState {
  List<CartlData> get cartList => throw _privateConstructorUsedError;
  int get totalPrice => throw _privateConstructorUsedError;
  bool get isEmpty => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call({List<CartlData> cartList, int totalPrice, bool isEmpty});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartList = null,
    Object? totalPrice = null,
    Object? isEmpty = null,
  }) {
    return _then(_value.copyWith(
      cartList: null == cartList
          ? _value.cartList
          : cartList // ignore: cast_nullable_to_non_nullable
              as List<CartlData>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      isEmpty: null == isEmpty
          ? _value.isEmpty
          : isEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CardStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$_CardStateCopyWith(
          _$_CardState value, $Res Function(_$_CardState) then) =
      __$$_CardStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CartlData> cartList, int totalPrice, bool isEmpty});
}

/// @nodoc
class __$$_CardStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_CardState>
    implements _$$_CardStateCopyWith<$Res> {
  __$$_CardStateCopyWithImpl(
      _$_CardState _value, $Res Function(_$_CardState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartList = null,
    Object? totalPrice = null,
    Object? isEmpty = null,
  }) {
    return _then(_$_CardState(
      cartList: null == cartList
          ? _value._cartList
          : cartList // ignore: cast_nullable_to_non_nullable
              as List<CartlData>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      isEmpty: null == isEmpty
          ? _value.isEmpty
          : isEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CardState implements _CardState {
  const _$_CardState(
      {final List<CartlData> cartList = const [],
      this.totalPrice = 0,
      this.isEmpty = true})
      : _cartList = cartList;

  final List<CartlData> _cartList;
  @override
  @JsonKey()
  List<CartlData> get cartList {
    if (_cartList is EqualUnmodifiableListView) return _cartList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartList);
  }

  @override
  @JsonKey()
  final int totalPrice;
  @override
  @JsonKey()
  final bool isEmpty;

  @override
  String toString() {
    return 'CartState(cartList: $cartList, totalPrice: $totalPrice, isEmpty: $isEmpty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardState &&
            const DeepCollectionEquality().equals(other._cartList, _cartList) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.isEmpty, isEmpty) || other.isEmpty == isEmpty));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_cartList), totalPrice, isEmpty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardStateCopyWith<_$_CardState> get copyWith =>
      __$$_CardStateCopyWithImpl<_$_CardState>(this, _$identity);
}

abstract class _CardState implements CartState {
  const factory _CardState(
      {final List<CartlData> cartList,
      final int totalPrice,
      final bool isEmpty}) = _$_CardState;

  @override
  List<CartlData> get cartList;
  @override
  int get totalPrice;
  @override
  bool get isEmpty;
  @override
  @JsonKey(ignore: true)
  _$$_CardStateCopyWith<_$_CardState> get copyWith =>
      throw _privateConstructorUsedError;
}
