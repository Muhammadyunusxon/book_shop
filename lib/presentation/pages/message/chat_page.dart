import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../../../application/chat/chat_provider.dart';
import '../../../infrastructure/models/models.dart';
import '../../components/components.dart';
import 'widgets/chat_item.dart';




class ChatPage extends ConsumerStatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(chatProvider);
    final notifier = ref.read(chatProvider.notifier);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ResponsiveAppBar(
              title: state.selectShop?.shopName ?? "",
              suffix: SvgPicture.asset(
                Assets.svgMoreCircle,
              ),
            ),
            Expanded(
                child: ListView.builder(
                    padding: REdgeInsets.symmetric(horizontal: 18),
                    reverse: true,
                    itemCount: state.chats.length,
                    itemBuilder: (context, index) {
                      return ChatItem(
                        chatData: state.chats[index],
                      );
                    }))
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom +
                MediaQuery.of(context).padding.bottom +
                12.r,
            left: 24.r,
            right: 24.r),
        child: CustomTextField(
          controller: controller,
          hintText: "Type a message ...",
          onEditingComplete: (){
            notifier.addMessage(
              ChatData(
                title: controller.text,
                date: DateTime.now(),
                isUser: true,

              ),
            );
            controller.clear();
          },
          suffixIcon: IconButton(
            onPressed: () {
              notifier.addMessage(
                ChatData(
                  title: controller.text,
                  date: DateTime.now(),
                  isUser: true,
                ),
              );
              controller.clear();
            },
            icon: Icon(
              FlutterRemix.send_plane_fill,
              size: 24.r,
            ),
          ),
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              12.horizontalSpace,
              ButtonsEffect(
                child: GestureDetector(
                  onTap: ()=> notifier.getImageGallery(),
                  child: Padding(
                    padding: REdgeInsets.symmetric(horizontal: 6),
                    child: Icon(
                      FlutterRemix.attachment_2,
                      size: 24.r,
                    ),
                  ),
                ),
              ),
              ButtonsEffect(
                child: GestureDetector(
                  onTap: ()=> notifier.getImageCamera(),
                  child: Padding(
                    padding: REdgeInsets.symmetric(horizontal: 6),
                    child: SvgPicture.asset(
                      Assets.svgCamera,
                      height: 24.r,
                      width: 24.r,
                    ),
                  ),
                ),
              ),
              6.horizontalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
