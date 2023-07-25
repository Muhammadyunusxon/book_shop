import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'payment_notifier.dart';
import 'payment_state.dart';

final paymentEzGroceryProvider =
    StateNotifierProvider<PaymentNotifier, PaymentState>(
  (ref) => PaymentNotifier(),
);
