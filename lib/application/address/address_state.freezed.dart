// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddressState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<LocationData> get addresses => throw _privateConstructorUsedError;
  int get selectAddress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressStateCopyWith<AddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressStateCopyWith<$Res> {
  factory $AddressStateCopyWith(
          AddressState value, $Res Function(AddressState) then) =
      _$AddressStateCopyWithImpl<$Res, AddressState>;
  @useResult
  $Res call({bool isLoading, List<LocationData> addresses, int selectAddress});
}

/// @nodoc
class _$AddressStateCopyWithImpl<$Res, $Val extends AddressState>
    implements $AddressStateCopyWith<$Res> {
  _$AddressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? addresses = null,
    Object? selectAddress = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      addresses: null == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<LocationData>,
      selectAddress: null == selectAddress
          ? _value.selectAddress
          : selectAddress // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SelectAddressStateCopyWith<$Res>
    implements $AddressStateCopyWith<$Res> {
  factory _$$_SelectAddressStateCopyWith(_$_SelectAddressState value,
          $Res Function(_$_SelectAddressState) then) =
      __$$_SelectAddressStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<LocationData> addresses, int selectAddress});
}

/// @nodoc
class __$$_SelectAddressStateCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$_SelectAddressState>
    implements _$$_SelectAddressStateCopyWith<$Res> {
  __$$_SelectAddressStateCopyWithImpl(
      _$_SelectAddressState _value, $Res Function(_$_SelectAddressState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? addresses = null,
    Object? selectAddress = null,
  }) {
    return _then(_$_SelectAddressState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      addresses: null == addresses
          ? _value._addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<LocationData>,
      selectAddress: null == selectAddress
          ? _value.selectAddress
          : selectAddress // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectAddressState extends _SelectAddressState {
  const _$_SelectAddressState(
      {this.isLoading = false,
      final List<LocationData> addresses = const [],
      this.selectAddress = 0})
      : _addresses = addresses,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  final List<LocationData> _addresses;
  @override
  @JsonKey()
  List<LocationData> get addresses {
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addresses);
  }

  @override
  @JsonKey()
  final int selectAddress;

  @override
  String toString() {
    return 'AddressState(isLoading: $isLoading, addresses: $addresses, selectAddress: $selectAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectAddressState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._addresses, _addresses) &&
            (identical(other.selectAddress, selectAddress) ||
                other.selectAddress == selectAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_addresses), selectAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectAddressStateCopyWith<_$_SelectAddressState> get copyWith =>
      __$$_SelectAddressStateCopyWithImpl<_$_SelectAddressState>(
          this, _$identity);
}

abstract class _SelectAddressState extends AddressState {
  const factory _SelectAddressState(
      {final bool isLoading,
      final List<LocationData> addresses,
      final int selectAddress}) = _$_SelectAddressState;
  const _SelectAddressState._() : super._();

  @override
  bool get isLoading;
  @override
  List<LocationData> get addresses;
  @override
  int get selectAddress;
  @override
  @JsonKey(ignore: true)
  _$$_SelectAddressStateCopyWith<_$_SelectAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}
