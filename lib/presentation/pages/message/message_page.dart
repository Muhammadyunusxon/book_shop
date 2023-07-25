import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter/material.dart';

import '../../../application/chat/chat_provider.dart';
import '../../../application/shop/shop_provider.dart';
import '../../../infrastructure/local_storage/g_grocery_storage.dart';
import '../../app_route.dart';
import '../../styles/style.dart';
import 'widgets/message_item.dart';

class MessagePage extends ConsumerStatefulWidget {
  const MessagePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MessagePageState();
}

class _MessagePageState extends ConsumerState<MessagePage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(chatProvider.notifier).getMessage(ref.watch(shopProvider).shops);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(chatProvider);
    return LocalStorage.getUser() == null
        ? Center(
            child: TextButton(
              onPressed: () => AppRoute.goSplash(context),
              child: const Text("Sign in or Sign up"),
            ),
          )
        : Column(
            children: [
              12.verticalSpace,
              Padding(
                padding: REdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Message",
                        style: Style.urbanistBold(size: 24),
                      ),
                    ),
                    IconButton(
                        splashRadius: 28.r,
                        onPressed: () {
                          AppRoute.goToShopsList(context);
                        },
                        icon: Icon(
                          FlutterRemix.search_line,
                          size: 28.r,
                        )),
                    6.verticalSpace,
                    IconButton(
                      splashRadius: 28.r,
                      onPressed: () {},
                      icon: Icon(
                        FlutterRemix.more_line,
                        size: 28.r,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding:
                        REdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    itemCount:
                        state.messages.isEmpty ? 0 : state.messages.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          ref
                              .read(chatProvider.notifier)
                              .selectShop(state.messages[index].shop);
                          AppRoute.goChat(context);
                        },
                        child: MessageItem(messageData: state.messages[index]),
                      );
                    }),
              ),
            ],
          );
  }
}
