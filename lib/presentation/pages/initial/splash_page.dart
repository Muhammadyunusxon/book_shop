// ignore_for_file: use_build_context_synchronously
import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../infrastructure/local_storage/g_grocery_storage.dart';
import '../../app_route.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await LocalStorage.init();
      FlutterNativeSplash.remove();
      LocalStorage.getUser() == null
          ? AppRoute.goAuth(context)
          : AppRoute.goMain(context);
    });


    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(Assets.pngFacebook, fit: BoxFit.cover);
  }
}
