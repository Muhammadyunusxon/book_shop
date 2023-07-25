// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreditState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<TransactionData> get transactions => throw _privateConstructorUsedError;
  List<BankData> get banks => throw _privateConstructorUsedError;
  int get selectBank => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreditStateCopyWith<CreditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditStateCopyWith<$Res> {
  factory $CreditStateCopyWith(
          CreditState value, $Res Function(CreditState) then) =
      _$CreditStateCopyWithImpl<$Res, CreditState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<TransactionData> transactions,
      List<BankData> banks,
      int selectBank});
}

/// @nodoc
class _$CreditStateCopyWithImpl<$Res, $Val extends CreditState>
    implements $CreditStateCopyWith<$Res> {
  _$CreditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? transactions = null,
    Object? banks = null,
    Object? selectBank = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionData>,
      banks: null == banks
          ? _value.banks
          : banks // ignore: cast_nullable_to_non_nullable
              as List<BankData>,
      selectBank: null == selectBank
          ? _value.selectBank
          : selectBank // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreditStateCopyWith<$Res>
    implements $CreditStateCopyWith<$Res> {
  factory _$$_CreditStateCopyWith(
          _$_CreditState value, $Res Function(_$_CreditState) then) =
      __$$_CreditStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<TransactionData> transactions,
      List<BankData> banks,
      int selectBank});
}

/// @nodoc
class __$$_CreditStateCopyWithImpl<$Res>
    extends _$CreditStateCopyWithImpl<$Res, _$_CreditState>
    implements _$$_CreditStateCopyWith<$Res> {
  __$$_CreditStateCopyWithImpl(
      _$_CreditState _value, $Res Function(_$_CreditState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? transactions = null,
    Object? banks = null,
    Object? selectBank = null,
  }) {
    return _then(_$_CreditState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionData>,
      banks: null == banks
          ? _value._banks
          : banks // ignore: cast_nullable_to_non_nullable
              as List<BankData>,
      selectBank: null == selectBank
          ? _value.selectBank
          : selectBank // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CreditState implements _CreditState {
  const _$_CreditState(
      {this.isLoading = false,
      final List<TransactionData> transactions = const [],
      final List<BankData> banks = const [],
      this.selectBank = 0})
      : _transactions = transactions,
        _banks = banks;

  @override
  @JsonKey()
  final bool isLoading;
  final List<TransactionData> _transactions;
  @override
  @JsonKey()
  List<TransactionData> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  final List<BankData> _banks;
  @override
  @JsonKey()
  List<BankData> get banks {
    if (_banks is EqualUnmodifiableListView) return _banks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banks);
  }

  @override
  @JsonKey()
  final int selectBank;

  @override
  String toString() {
    return 'CreditState(isLoading: $isLoading, transactions: $transactions, banks: $banks, selectBank: $selectBank)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreditState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            const DeepCollectionEquality().equals(other._banks, _banks) &&
            (identical(other.selectBank, selectBank) ||
                other.selectBank == selectBank));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_transactions),
      const DeepCollectionEquality().hash(_banks),
      selectBank);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreditStateCopyWith<_$_CreditState> get copyWith =>
      __$$_CreditStateCopyWithImpl<_$_CreditState>(this, _$identity);
}

abstract class _CreditState implements CreditState {
  const factory _CreditState(
      {final bool isLoading,
      final List<TransactionData> transactions,
      final List<BankData> banks,
      final int selectBank}) = _$_CreditState;

  @override
  bool get isLoading;
  @override
  List<TransactionData> get transactions;
  @override
  List<BankData> get banks;
  @override
  int get selectBank;
  @override
  @JsonKey(ignore: true)
  _$$_CreditStateCopyWith<_$_CreditState> get copyWith =>
      throw _privateConstructorUsedError;
}
