// ignore_for_file: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/models/notification_data.dart';


part 'notification_state.freezed.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    @Default(true) bool isGeneral,
    @Default(false) bool isOffer,
    @Default(false) bool isPromo,
    @Default(true) bool isPayment,
    @Default(false) bool isCashback,
    @Default(true) bool isUpdate,
    @Default(false) bool isNewService,
    @Default(false) bool isNewTips,
    @Default([]) List<NotificationData> notifications,
  }) = _NotificationState;
}
