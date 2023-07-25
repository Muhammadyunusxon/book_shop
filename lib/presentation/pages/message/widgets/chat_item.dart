import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../infrastructure/models/models.dart';
import '../../../components/components.dart';
import '../../../styles/style.dart';

class ChatItem extends StatelessWidget {
  final ChatData chatData;

  const ChatItem({super.key, required this.chatData});

  @override
  Widget build(BuildContext context) {
    if (chatData.isUser ?? true) {
      return Padding(
        padding: REdgeInsets.only(left: 80, bottom: 12),
        child: Container(
          padding: REdgeInsets.symmetric(horizontal: 18, vertical: 12),
          decoration: BoxDecoration(
            color: chatData.img != null
                ? Style.transparent
                : Style.primary,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.r),
              topRight: Radius.circular(16.r),
              bottomLeft: Radius.circular(16.r),
              bottomRight: Radius.circular(4.r),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (chatData.img != null)
                CustomImage(
                  url: chatData.img,
                  height: 140,
                  width: 140,
                ),
              if (chatData.title != null)
                Expanded(
                  child: Text(
                    chatData.title ?? "",
                    style: Style.urbanistMedium(
                      size: 18,
                      color: Style.white,
                    ),
                  ),
                ),
              6.horizontalSpace,
              Text(
                DateFormat("hh:mm a").format(
                  chatData.date ?? DateTime.now(),
                ),
                style: Style.urbanistRegular(
                  size: 14,
                  color: chatData.img != null
                      ? Style.greyscale500
                      : Style.white,
                ),
                textAlign: TextAlign.end,
              ),
            ],
          ),
        ),
      );
    } else {
      return Padding(
        padding: REdgeInsets.only(right: 80, bottom: 12),
        child: Container(
          padding: REdgeInsets.symmetric(horizontal: 18, vertical: 12),
          decoration: BoxDecoration(
            color: chatData.img != null
                ? Style.transparent
                : Style.greyscale500,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16.r),
              topRight: Radius.circular(16.r),
              bottomRight: Radius.circular(16.r),
              topLeft: Radius.circular(4.r),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (chatData.img != null)
                CustomImage(
                  url: chatData.img,
                  height: 140,
                  width: 140,
                ),
              if (chatData.title != null)
                Expanded(
                  child: Text(
                    chatData.title ?? "",
                    style: Style.urbanistMedium(
                      size: 18,
                      color: Style.white,
                    ),
                  ),
                ),
              6.horizontalSpace,
              Text(
                DateFormat("hh:mm a").format(
                  chatData.date ?? DateTime.now(),
                ),
                style: Style.urbanistRegular(
                  size: 14,
                  color: chatData.img != null
                      ? Style.greyscale500
                      : Style.white,
                ),
                textAlign: TextAlign.end,
              ),
            ],
          ),
        ),
      );
    }
  }
}
