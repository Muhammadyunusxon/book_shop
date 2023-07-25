// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingState {
  List<FriendsData> get friends => throw _privateConstructorUsedError;
  List<FaqData> get faqs => throw _privateConstructorUsedError;
  List<FaqData> get faqList => throw _privateConstructorUsedError;
  List<String> get tabList => throw _privateConstructorUsedError;
  int get selectFaq => throw _privateConstructorUsedError;
  bool get isFaqSearch => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingStateCopyWith<SettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
          SettingState value, $Res Function(SettingState) then) =
      _$SettingStateCopyWithImpl<$Res, SettingState>;
  @useResult
  $Res call(
      {List<FriendsData> friends,
      List<FaqData> faqs,
      List<FaqData> faqList,
      List<String> tabList,
      int selectFaq,
      bool isFaqSearch});
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res, $Val extends SettingState>
    implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? friends = null,
    Object? faqs = null,
    Object? faqList = null,
    Object? tabList = null,
    Object? selectFaq = null,
    Object? isFaqSearch = null,
  }) {
    return _then(_value.copyWith(
      friends: null == friends
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<FriendsData>,
      faqs: null == faqs
          ? _value.faqs
          : faqs // ignore: cast_nullable_to_non_nullable
              as List<FaqData>,
      faqList: null == faqList
          ? _value.faqList
          : faqList // ignore: cast_nullable_to_non_nullable
              as List<FaqData>,
      tabList: null == tabList
          ? _value.tabList
          : tabList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectFaq: null == selectFaq
          ? _value.selectFaq
          : selectFaq // ignore: cast_nullable_to_non_nullable
              as int,
      isFaqSearch: null == isFaqSearch
          ? _value.isFaqSearch
          : isFaqSearch // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingStateCopyWith<$Res>
    implements $SettingStateCopyWith<$Res> {
  factory _$$_SettingStateCopyWith(
          _$_SettingState value, $Res Function(_$_SettingState) then) =
      __$$_SettingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<FriendsData> friends,
      List<FaqData> faqs,
      List<FaqData> faqList,
      List<String> tabList,
      int selectFaq,
      bool isFaqSearch});
}

/// @nodoc
class __$$_SettingStateCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res, _$_SettingState>
    implements _$$_SettingStateCopyWith<$Res> {
  __$$_SettingStateCopyWithImpl(
      _$_SettingState _value, $Res Function(_$_SettingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? friends = null,
    Object? faqs = null,
    Object? faqList = null,
    Object? tabList = null,
    Object? selectFaq = null,
    Object? isFaqSearch = null,
  }) {
    return _then(_$_SettingState(
      friends: null == friends
          ? _value._friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<FriendsData>,
      faqs: null == faqs
          ? _value._faqs
          : faqs // ignore: cast_nullable_to_non_nullable
              as List<FaqData>,
      faqList: null == faqList
          ? _value._faqList
          : faqList // ignore: cast_nullable_to_non_nullable
              as List<FaqData>,
      tabList: null == tabList
          ? _value._tabList
          : tabList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectFaq: null == selectFaq
          ? _value.selectFaq
          : selectFaq // ignore: cast_nullable_to_non_nullable
              as int,
      isFaqSearch: null == isFaqSearch
          ? _value.isFaqSearch
          : isFaqSearch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SettingState implements _SettingState {
  const _$_SettingState(
      {final List<FriendsData> friends = const [],
      final List<FaqData> faqs = const [],
      final List<FaqData> faqList = const [],
      final List<String> tabList = const [
        "General",
        "Account",
        "Service",
        "Payment"
      ],
      this.selectFaq = -1,
      this.isFaqSearch = false})
      : _friends = friends,
        _faqs = faqs,
        _faqList = faqList,
        _tabList = tabList;

  final List<FriendsData> _friends;
  @override
  @JsonKey()
  List<FriendsData> get friends {
    if (_friends is EqualUnmodifiableListView) return _friends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_friends);
  }

  final List<FaqData> _faqs;
  @override
  @JsonKey()
  List<FaqData> get faqs {
    if (_faqs is EqualUnmodifiableListView) return _faqs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_faqs);
  }

  final List<FaqData> _faqList;
  @override
  @JsonKey()
  List<FaqData> get faqList {
    if (_faqList is EqualUnmodifiableListView) return _faqList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_faqList);
  }

  final List<String> _tabList;
  @override
  @JsonKey()
  List<String> get tabList {
    if (_tabList is EqualUnmodifiableListView) return _tabList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tabList);
  }

  @override
  @JsonKey()
  final int selectFaq;
  @override
  @JsonKey()
  final bool isFaqSearch;

  @override
  String toString() {
    return 'SettingState(friends: $friends, faqs: $faqs, faqList: $faqList, tabList: $tabList, selectFaq: $selectFaq, isFaqSearch: $isFaqSearch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingState &&
            const DeepCollectionEquality().equals(other._friends, _friends) &&
            const DeepCollectionEquality().equals(other._faqs, _faqs) &&
            const DeepCollectionEquality().equals(other._faqList, _faqList) &&
            const DeepCollectionEquality().equals(other._tabList, _tabList) &&
            (identical(other.selectFaq, selectFaq) ||
                other.selectFaq == selectFaq) &&
            (identical(other.isFaqSearch, isFaqSearch) ||
                other.isFaqSearch == isFaqSearch));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_friends),
      const DeepCollectionEquality().hash(_faqs),
      const DeepCollectionEquality().hash(_faqList),
      const DeepCollectionEquality().hash(_tabList),
      selectFaq,
      isFaqSearch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingStateCopyWith<_$_SettingState> get copyWith =>
      __$$_SettingStateCopyWithImpl<_$_SettingState>(this, _$identity);
}

abstract class _SettingState implements SettingState {
  const factory _SettingState(
      {final List<FriendsData> friends,
      final List<FaqData> faqs,
      final List<FaqData> faqList,
      final List<String> tabList,
      final int selectFaq,
      final bool isFaqSearch}) = _$_SettingState;

  @override
  List<FriendsData> get friends;
  @override
  List<FaqData> get faqs;
  @override
  List<FaqData> get faqList;
  @override
  List<String> get tabList;
  @override
  int get selectFaq;
  @override
  bool get isFaqSearch;
  @override
  @JsonKey(ignore: true)
  _$$_SettingStateCopyWith<_$_SettingState> get copyWith =>
      throw _privateConstructorUsedError;
}
