import 'credit_notifier.dart';
import 'credit_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final creditProvider = StateNotifierProvider<CreditNotifier, CreditState>(
  (ref) => CreditNotifier(),
);
