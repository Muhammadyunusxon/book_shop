// ignore_for_file: deprecated_member_use
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:proste_indexed_stack/proste_indexed_stack.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import '../../../application/address/address_provider.dart';
import '../../../application/cart/cart_provider.dart';
import '../../../application/home/home_provider.dart';
import '../../../application/main/main_provider.dart';
import '../../../application/product/product_provider.dart';
import '../../../application/settings/setting_provider.dart';
import '../../../application/shop/shop_provider.dart';
import '../../styles/style.dart';
import '../cart/cart_page.dart';
import '../home/home_page.dart';
import '../message/message_page.dart';
import '../profile/profile_page.dart';

class MainPage extends ConsumerStatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  ConsumerState<MainPage> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.read(shopProvider.notifier).init();
      ref.read(homeProvider.notifier).initial();
      ref.read(productProvider.notifier).initial(ref.watch(shopProvider).shops);
      ref.read(settingProvider.notifier).initial();
      ref.read(addressProvider.notifier).initial();
      ref.read(cartProvider.notifier).initial();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(mainProvider);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Style.white,
        body: SafeArea(
            child: ProsteIndexedStack(
          index: state.selectIndex,
          children: [
            IndexedStackChild(child: const HomePage()),
            IndexedStackChild(child: const MessagePage()),
            IndexedStackChild(child: const CartPage()),
            IndexedStackChild(child: const ProfilePage()),
          ],
        )),
        bottomNavigationBar: SnakeNavigationBar.color(
          behaviour: SnakeBarBehaviour.floating,
          snakeShape: SnakeShape.circle,
          snakeViewColor: Style.primary,
          selectedItemColor: Style.white,
          unselectedItemColor: Colors.blueGrey,
          showUnselectedLabels: false,
          showSelectedLabels: true,
          currentIndex: state.selectIndex,
          onTap: (s) {
            ref.read(mainProvider.notifier).changeIndex(s);
            if (s == 2) {
              ref
                  .read(cartProvider.notifier)
                  .getCarts(ref.watch(productProvider).products);
            }
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  Assets.svgHome,
                  color: state.selectIndex == 0
                      ? Style.white
                      : Style.black,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  Assets.svgMessage,
                  color: state.selectIndex == 1
                      ? Style.white
                      : Style.black,
                ),
                label: "Message"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  ref.watch(cartProvider).cartList.isNotEmpty?
                  Assets.svgShoppingCart:
                  Assets.svgShoppingCart,
                ),
                label: "ezSocial"),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                color: state.selectIndex == 3
                    ? Style.white
                    : Style.black,
                Assets.svgProfile,
              ),
              label: "Profile",
            ),
          ],
        ));
  }
}
