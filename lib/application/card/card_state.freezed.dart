// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CardState {
  String get name => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  String get expiryDate => throw _privateConstructorUsedError;
  String get cvv => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CardStateCopyWith<CardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardStateCopyWith<$Res> {
  factory $CardStateCopyWith(CardState value, $Res Function(CardState) then) =
      _$CardStateCopyWithImpl<$Res, CardState>;
  @useResult
  $Res call(
      {String name, String number, String expiryDate, String cvv, String type});
}

/// @nodoc
class _$CardStateCopyWithImpl<$Res, $Val extends CardState>
    implements $CardStateCopyWith<$Res> {
  _$CardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? number = null,
    Object? expiryDate = null,
    Object? cvv = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String,
      cvv: null == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CardStateCopyWith<$Res> implements $CardStateCopyWith<$Res> {
  factory _$$_CardStateCopyWith(
          _$_CardState value, $Res Function(_$_CardState) then) =
      __$$_CardStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String number, String expiryDate, String cvv, String type});
}

/// @nodoc
class __$$_CardStateCopyWithImpl<$Res>
    extends _$CardStateCopyWithImpl<$Res, _$_CardState>
    implements _$$_CardStateCopyWith<$Res> {
  __$$_CardStateCopyWithImpl(
      _$_CardState _value, $Res Function(_$_CardState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? number = null,
    Object? expiryDate = null,
    Object? cvv = null,
    Object? type = null,
  }) {
    return _then(_$_CardState(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String,
      cvv: null == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CardState implements _CardState {
  const _$_CardState(
      {this.name = '',
      this.number = '',
      this.expiryDate = '',
      this.cvv = '',
      this.type = ''});

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String number;
  @override
  @JsonKey()
  final String expiryDate;
  @override
  @JsonKey()
  final String cvv;
  @override
  @JsonKey()
  final String type;

  @override
  String toString() {
    return 'CardState(name: $name, number: $number, expiryDate: $expiryDate, cvv: $cvv, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.cvv, cvv) || other.cvv == cvv) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, number, expiryDate, cvv, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardStateCopyWith<_$_CardState> get copyWith =>
      __$$_CardStateCopyWithImpl<_$_CardState>(this, _$identity);
}

abstract class _CardState implements CardState {
  const factory _CardState(
      {final String name,
      final String number,
      final String expiryDate,
      final String cvv,
      final String type}) = _$_CardState;

  @override
  String get name;
  @override
  String get number;
  @override
  String get expiryDate;
  @override
  String get cvv;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_CardStateCopyWith<_$_CardState> get copyWith =>
      throw _privateConstructorUsedError;
}
