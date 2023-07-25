// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShopState {
  List<ShopData> get shops => throw _privateConstructorUsedError;
  List<String> get shopLikes => throw _privateConstructorUsedError;
  List<dynamic> get listOfNums => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;
  List<FriendsData> get friends => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopStateCopyWith<ShopState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopStateCopyWith<$Res> {
  factory $ShopStateCopyWith(ShopState value, $Res Function(ShopState) then) =
      _$ShopStateCopyWithImpl<$Res, ShopState>;
  @useResult
  $Res call(
      {List<ShopData> shops,
      List<String> shopLikes,
      List<dynamic> listOfNums,
      int selectedIndex,
      List<FriendsData> friends});
}

/// @nodoc
class _$ShopStateCopyWithImpl<$Res, $Val extends ShopState>
    implements $ShopStateCopyWith<$Res> {
  _$ShopStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shops = null,
    Object? shopLikes = null,
    Object? listOfNums = null,
    Object? selectedIndex = null,
    Object? friends = null,
  }) {
    return _then(_value.copyWith(
      shops: null == shops
          ? _value.shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<ShopData>,
      shopLikes: null == shopLikes
          ? _value.shopLikes
          : shopLikes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      listOfNums: null == listOfNums
          ? _value.listOfNums
          : listOfNums // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      friends: null == friends
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<FriendsData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShopStateCopyWith<$Res> implements $ShopStateCopyWith<$Res> {
  factory _$$_ShopStateCopyWith(
          _$_ShopState value, $Res Function(_$_ShopState) then) =
      __$$_ShopStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ShopData> shops,
      List<String> shopLikes,
      List<dynamic> listOfNums,
      int selectedIndex,
      List<FriendsData> friends});
}

/// @nodoc
class __$$_ShopStateCopyWithImpl<$Res>
    extends _$ShopStateCopyWithImpl<$Res, _$_ShopState>
    implements _$$_ShopStateCopyWith<$Res> {
  __$$_ShopStateCopyWithImpl(
      _$_ShopState _value, $Res Function(_$_ShopState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shops = null,
    Object? shopLikes = null,
    Object? listOfNums = null,
    Object? selectedIndex = null,
    Object? friends = null,
  }) {
    return _then(_$_ShopState(
      shops: null == shops
          ? _value._shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<ShopData>,
      shopLikes: null == shopLikes
          ? _value._shopLikes
          : shopLikes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      listOfNums: null == listOfNums
          ? _value._listOfNums
          : listOfNums // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      friends: null == friends
          ? _value._friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<FriendsData>,
    ));
  }
}

/// @nodoc

class _$_ShopState implements _ShopState {
  const _$_ShopState(
      {final List<ShopData> shops = const [],
      final List<String> shopLikes = const [],
      final List<dynamic> listOfNums = const ['5', '4', '3', '2', '1'],
      this.selectedIndex = 0,
      final List<FriendsData> friends = const []})
      : _shops = shops,
        _shopLikes = shopLikes,
        _listOfNums = listOfNums,
        _friends = friends;

  final List<ShopData> _shops;
  @override
  @JsonKey()
  List<ShopData> get shops {
    if (_shops is EqualUnmodifiableListView) return _shops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shops);
  }

  final List<String> _shopLikes;
  @override
  @JsonKey()
  List<String> get shopLikes {
    if (_shopLikes is EqualUnmodifiableListView) return _shopLikes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shopLikes);
  }

  final List<dynamic> _listOfNums;
  @override
  @JsonKey()
  List<dynamic> get listOfNums {
    if (_listOfNums is EqualUnmodifiableListView) return _listOfNums;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOfNums);
  }

  @override
  @JsonKey()
  final int selectedIndex;
  final List<FriendsData> _friends;
  @override
  @JsonKey()
  List<FriendsData> get friends {
    if (_friends is EqualUnmodifiableListView) return _friends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_friends);
  }

  @override
  String toString() {
    return 'ShopState(shops: $shops, shopLikes: $shopLikes, listOfNums: $listOfNums, selectedIndex: $selectedIndex, friends: $friends)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopState &&
            const DeepCollectionEquality().equals(other._shops, _shops) &&
            const DeepCollectionEquality()
                .equals(other._shopLikes, _shopLikes) &&
            const DeepCollectionEquality()
                .equals(other._listOfNums, _listOfNums) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            const DeepCollectionEquality().equals(other._friends, _friends));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_shops),
      const DeepCollectionEquality().hash(_shopLikes),
      const DeepCollectionEquality().hash(_listOfNums),
      selectedIndex,
      const DeepCollectionEquality().hash(_friends));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopStateCopyWith<_$_ShopState> get copyWith =>
      __$$_ShopStateCopyWithImpl<_$_ShopState>(this, _$identity);
}

abstract class _ShopState implements ShopState {
  const factory _ShopState(
      {final List<ShopData> shops,
      final List<String> shopLikes,
      final List<dynamic> listOfNums,
      final int selectedIndex,
      final List<FriendsData> friends}) = _$_ShopState;

  @override
  List<ShopData> get shops;
  @override
  List<String> get shopLikes;
  @override
  List<dynamic> get listOfNums;
  @override
  int get selectedIndex;
  @override
  List<FriendsData> get friends;
  @override
  @JsonKey(ignore: true)
  _$$_ShopStateCopyWith<_$_ShopState> get copyWith =>
      throw _privateConstructorUsedError;
}
