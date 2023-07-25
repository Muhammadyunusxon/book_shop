// ignore_for_file: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../infrastructure/models/models.dart';
part 'address_state.freezed.dart';

@freezed
class AddressState with _$AddressState {
  const factory AddressState({
    @Default(false) bool isLoading,
    @Default([]) List<LocationData> addresses,
    @Default(0) int selectAddress,

  }) = _SelectAddressState;

  const AddressState._();
}
