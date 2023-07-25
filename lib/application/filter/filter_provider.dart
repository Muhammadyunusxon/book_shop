import 'filter_notifier.dart';
import 'filter_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final filterProvider = StateNotifierProvider<FilterNotifier, FilterState>(
  (ref) => FilterNotifier(),
);
