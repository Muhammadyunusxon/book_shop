// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SocialState {
  List<ShopData> get shops => throw _privateConstructorUsedError;
  List<SocialData> get socials => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  List<String> get socialLikes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SocialStateCopyWith<SocialState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialStateCopyWith<$Res> {
  factory $SocialStateCopyWith(
          SocialState value, $Res Function(SocialState) then) =
      _$SocialStateCopyWithImpl<$Res, SocialState>;
  @useResult
  $Res call(
      {List<ShopData> shops,
      List<SocialData> socials,
      int currentIndex,
      List<String> socialLikes});
}

/// @nodoc
class _$SocialStateCopyWithImpl<$Res, $Val extends SocialState>
    implements $SocialStateCopyWith<$Res> {
  _$SocialStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shops = null,
    Object? socials = null,
    Object? currentIndex = null,
    Object? socialLikes = null,
  }) {
    return _then(_value.copyWith(
      shops: null == shops
          ? _value.shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<ShopData>,
      socials: null == socials
          ? _value.socials
          : socials // ignore: cast_nullable_to_non_nullable
              as List<SocialData>,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      socialLikes: null == socialLikes
          ? _value.socialLikes
          : socialLikes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SocialStateCopyWith<$Res>
    implements $SocialStateCopyWith<$Res> {
  factory _$$_SocialStateCopyWith(
          _$_SocialState value, $Res Function(_$_SocialState) then) =
      __$$_SocialStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ShopData> shops,
      List<SocialData> socials,
      int currentIndex,
      List<String> socialLikes});
}

/// @nodoc
class __$$_SocialStateCopyWithImpl<$Res>
    extends _$SocialStateCopyWithImpl<$Res, _$_SocialState>
    implements _$$_SocialStateCopyWith<$Res> {
  __$$_SocialStateCopyWithImpl(
      _$_SocialState _value, $Res Function(_$_SocialState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shops = null,
    Object? socials = null,
    Object? currentIndex = null,
    Object? socialLikes = null,
  }) {
    return _then(_$_SocialState(
      shops: null == shops
          ? _value._shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<ShopData>,
      socials: null == socials
          ? _value._socials
          : socials // ignore: cast_nullable_to_non_nullable
              as List<SocialData>,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      socialLikes: null == socialLikes
          ? _value._socialLikes
          : socialLikes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_SocialState implements _SocialState {
  const _$_SocialState(
      {final List<ShopData> shops = const [],
      final List<SocialData> socials = const [],
      this.currentIndex = 0,
      final List<String> socialLikes = const []})
      : _shops = shops,
        _socials = socials,
        _socialLikes = socialLikes;

  final List<ShopData> _shops;
  @override
  @JsonKey()
  List<ShopData> get shops {
    if (_shops is EqualUnmodifiableListView) return _shops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shops);
  }

  final List<SocialData> _socials;
  @override
  @JsonKey()
  List<SocialData> get socials {
    if (_socials is EqualUnmodifiableListView) return _socials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_socials);
  }

  @override
  @JsonKey()
  final int currentIndex;
  final List<String> _socialLikes;
  @override
  @JsonKey()
  List<String> get socialLikes {
    if (_socialLikes is EqualUnmodifiableListView) return _socialLikes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_socialLikes);
  }

  @override
  String toString() {
    return 'SocialState(shops: $shops, socials: $socials, currentIndex: $currentIndex, socialLikes: $socialLikes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SocialState &&
            const DeepCollectionEquality().equals(other._shops, _shops) &&
            const DeepCollectionEquality().equals(other._socials, _socials) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            const DeepCollectionEquality()
                .equals(other._socialLikes, _socialLikes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_shops),
      const DeepCollectionEquality().hash(_socials),
      currentIndex,
      const DeepCollectionEquality().hash(_socialLikes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SocialStateCopyWith<_$_SocialState> get copyWith =>
      __$$_SocialStateCopyWithImpl<_$_SocialState>(this, _$identity);
}

abstract class _SocialState implements SocialState {
  const factory _SocialState(
      {final List<ShopData> shops,
      final List<SocialData> socials,
      final int currentIndex,
      final List<String> socialLikes}) = _$_SocialState;

  @override
  List<ShopData> get shops;
  @override
  List<SocialData> get socials;
  @override
  int get currentIndex;
  @override
  List<String> get socialLikes;
  @override
  @JsonKey(ignore: true)
  _$$_SocialStateCopyWith<_$_SocialState> get copyWith =>
      throw _privateConstructorUsedError;
}
