import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'social_notifier.dart';
import 'social_state.dart';


final socialProvider = StateNotifierProvider<SocialNotifier, SocialState>(
  (ref) => SocialNotifier(),
);
