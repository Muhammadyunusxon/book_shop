
import 'package:flutter_riverpod/flutter_riverpod.dart';


import 'notification_state.dart';

class NotificationNotifier extends StateNotifier<NotificationState> {
  NotificationNotifier() : super(const NotificationState());



  getNotifications() async {
    // final data = await rootBundle.loadString(Assets.cartDataNotification);
    // List<NotificationData> notifications = notificationDataFromJson(data);
    // state = state.copyWith(notifications: notifications);
  }

  changeGeneral(bool value) =>state=state.copyWith(isGeneral: value);
  changeOffer(bool value) =>state=state.copyWith(isOffer: value);
  changePromo(bool value) =>state=state.copyWith(isPromo: value);
  changePayment(bool value) =>state=state.copyWith(isPayment: value);
  changeCashback(bool value) =>state=state.copyWith(isCashback: value);
  changeUpdate(bool value) =>state=state.copyWith(isUpdate: value);
  changeNewService(bool value) =>state=state.copyWith(isNewService: value);
  changeNewTips(bool value) =>state=state.copyWith(isNewTips: value);

}
