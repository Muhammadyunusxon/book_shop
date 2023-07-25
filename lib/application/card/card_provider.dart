import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'card_notifier.dart';
import 'card_state.dart';


final cardProvider = StateNotifierProvider.autoDispose<CardNotifier, CardState>(
  (ref) => CardNotifier(),
);
