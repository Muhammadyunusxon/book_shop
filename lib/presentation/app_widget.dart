import 'package:book_shop/presentation/pages/initial/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'pages/main/main_page.dart';
import 'styles/theme/light_theme.dart';

class AppWidget extends ConsumerWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) {
        return Consumer(builder: (context, ref, child) {
          return MaterialApp(
            theme: lightTheme(),
            title: "E-book shop",
            debugShowCheckedModeBanner: false,
            home: const SplashPage(),
          );
        });
      },
    );
  }
}
