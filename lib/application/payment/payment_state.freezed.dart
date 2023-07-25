// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentState {
  bool get isLoading => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;
  int get selectedDiscountsIndex => throw _privateConstructorUsedError;
  List<CardData> get cardList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentStateCopyWith<PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
  @useResult
  $Res call(
      {bool isLoading,
      int selectedIndex,
      int selectedDiscountsIndex,
      List<CardData> cardList});
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? selectedIndex = null,
    Object? selectedDiscountsIndex = null,
    Object? cardList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedDiscountsIndex: null == selectedDiscountsIndex
          ? _value.selectedDiscountsIndex
          : selectedDiscountsIndex // ignore: cast_nullable_to_non_nullable
              as int,
      cardList: null == cardList
          ? _value.cardList
          : cardList // ignore: cast_nullable_to_non_nullable
              as List<CardData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentStateCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$_PaymentStateCopyWith(
          _$_PaymentState value, $Res Function(_$_PaymentState) then) =
      __$$_PaymentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      int selectedIndex,
      int selectedDiscountsIndex,
      List<CardData> cardList});
}

/// @nodoc
class __$$_PaymentStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_PaymentState>
    implements _$$_PaymentStateCopyWith<$Res> {
  __$$_PaymentStateCopyWithImpl(
      _$_PaymentState _value, $Res Function(_$_PaymentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? selectedIndex = null,
    Object? selectedDiscountsIndex = null,
    Object? cardList = null,
  }) {
    return _then(_$_PaymentState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedDiscountsIndex: null == selectedDiscountsIndex
          ? _value.selectedDiscountsIndex
          : selectedDiscountsIndex // ignore: cast_nullable_to_non_nullable
              as int,
      cardList: null == cardList
          ? _value._cardList
          : cardList // ignore: cast_nullable_to_non_nullable
              as List<CardData>,
    ));
  }
}

/// @nodoc

class _$_PaymentState implements _PaymentState {
  const _$_PaymentState(
      {this.isLoading = false,
      this.selectedIndex = 0,
      this.selectedDiscountsIndex = 0,
      final List<CardData> cardList = const []})
      : _cardList = cardList;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final int selectedIndex;
  @override
  @JsonKey()
  final int selectedDiscountsIndex;
  final List<CardData> _cardList;
  @override
  @JsonKey()
  List<CardData> get cardList {
    if (_cardList is EqualUnmodifiableListView) return _cardList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cardList);
  }

  @override
  String toString() {
    return 'PaymentState(isLoading: $isLoading, selectedIndex: $selectedIndex, selectedDiscountsIndex: $selectedDiscountsIndex, cardList: $cardList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            (identical(other.selectedDiscountsIndex, selectedDiscountsIndex) ||
                other.selectedDiscountsIndex == selectedDiscountsIndex) &&
            const DeepCollectionEquality().equals(other._cardList, _cardList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, selectedIndex,
      selectedDiscountsIndex, const DeepCollectionEquality().hash(_cardList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentStateCopyWith<_$_PaymentState> get copyWith =>
      __$$_PaymentStateCopyWithImpl<_$_PaymentState>(this, _$identity);
}

abstract class _PaymentState implements PaymentState {
  const factory _PaymentState(
      {final bool isLoading,
      final int selectedIndex,
      final int selectedDiscountsIndex,
      final List<CardData> cardList}) = _$_PaymentState;

  @override
  bool get isLoading;
  @override
  int get selectedIndex;
  @override
  int get selectedDiscountsIndex;
  @override
  List<CardData> get cardList;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentStateCopyWith<_$_PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}
