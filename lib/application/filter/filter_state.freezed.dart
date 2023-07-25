// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilterState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<FilterData> get filters => throw _privateConstructorUsedError;
  List<int> get selectFilters => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterStateCopyWith<FilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) then) =
      _$FilterStateCopyWithImpl<$Res, FilterState>;
  @useResult
  $Res call(
      {bool isLoading, List<FilterData> filters, List<int> selectFilters});
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res, $Val extends FilterState>
    implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? filters = null,
    Object? selectFilters = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<FilterData>,
      selectFilters: null == selectFilters
          ? _value.selectFilters
          : selectFilters // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilterStateCopyWith<$Res>
    implements $FilterStateCopyWith<$Res> {
  factory _$$_FilterStateCopyWith(
          _$_FilterState value, $Res Function(_$_FilterState) then) =
      __$$_FilterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, List<FilterData> filters, List<int> selectFilters});
}

/// @nodoc
class __$$_FilterStateCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res, _$_FilterState>
    implements _$$_FilterStateCopyWith<$Res> {
  __$$_FilterStateCopyWithImpl(
      _$_FilterState _value, $Res Function(_$_FilterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? filters = null,
    Object? selectFilters = null,
  }) {
    return _then(_$_FilterState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      filters: null == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<FilterData>,
      selectFilters: null == selectFilters
          ? _value._selectFilters
          : selectFilters // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_FilterState implements _FilterState {
  const _$_FilterState(
      {this.isLoading = false,
      final List<FilterData> filters = const [],
      final List<int> selectFilters = const []})
      : _filters = filters,
        _selectFilters = selectFilters;

  @override
  @JsonKey()
  final bool isLoading;
  final List<FilterData> _filters;
  @override
  @JsonKey()
  List<FilterData> get filters {
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filters);
  }

  final List<int> _selectFilters;
  @override
  @JsonKey()
  List<int> get selectFilters {
    if (_selectFilters is EqualUnmodifiableListView) return _selectFilters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectFilters);
  }

  @override
  String toString() {
    return 'FilterState(isLoading: $isLoading, filters: $filters, selectFilters: $selectFilters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._filters, _filters) &&
            const DeepCollectionEquality()
                .equals(other._selectFilters, _selectFilters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_filters),
      const DeepCollectionEquality().hash(_selectFilters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterStateCopyWith<_$_FilterState> get copyWith =>
      __$$_FilterStateCopyWithImpl<_$_FilterState>(this, _$identity);
}

abstract class _FilterState implements FilterState {
  const factory _FilterState(
      {final bool isLoading,
      final List<FilterData> filters,
      final List<int> selectFilters}) = _$_FilterState;

  @override
  bool get isLoading;
  @override
  List<FilterData> get filters;
  @override
  List<int> get selectFilters;
  @override
  @JsonKey(ignore: true)
  _$$_FilterStateCopyWith<_$_FilterState> get copyWith =>
      throw _privateConstructorUsedError;
}
