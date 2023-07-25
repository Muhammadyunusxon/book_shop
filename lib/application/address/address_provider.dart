import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'address_state.dart';
import 'address_notifier.dart';

final addressProvider =
    StateNotifierProvider<AddressNotifier, AddressState>(
  (ref) => AddressNotifier(),
);
