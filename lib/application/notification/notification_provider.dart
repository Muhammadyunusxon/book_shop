import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'notification_notifier.dart';
import 'notification_state.dart';


final notificationProvider = StateNotifierProvider<NotificationNotifier, NotificationState>(
  (ref) => NotificationNotifier(),
);
