import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'setting_notifier.dart';
import 'setting_state.dart';


final settingProvider = StateNotifierProvider<SettingNotifier, SettingState>(
  (ref) => SettingNotifier(),
);
