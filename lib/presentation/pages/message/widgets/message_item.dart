import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../infrastructure/models/models.dart';
import '../../../components/components.dart';
import '../../../styles/style.dart';

class MessageItem extends StatelessWidget {
  final MessageData? messageData;

  const MessageItem({super.key, required this.messageData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: REdgeInsets.only(bottom: 16),
      padding: REdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Style.containerColor,
        boxShadow: const [
          BoxShadow(
            color: Style.greyscale50,
            offset: Offset(0, 4),
            blurRadius: 60,
          ),
        ],
        borderRadius: BorderRadius.circular(28.r),
      ),
      child: Row(
        children: [
          Stack(
            children: [
              CustomImage(
                url: messageData?.shop?.img,
                height: 70,
                width: 70,
                radius: 20,
              ),
            ],
          ),
          16.horizontalSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  messageData?.shop?.shopName ?? "",
                  style: Style.urbanistSemiBold(size: 18),
                  maxLines: 1,
                ),
                12.verticalSpace,
                Row(
                  children: [
                    if (messageData?.chats?.first.title != null)
                      Expanded(
                        child: Text(
                          messageData?.chats?.first.title ?? "",
                          style: Style.urbanistMedium(
                            size: 14,
                            color: Style.greyscale700,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    if (messageData?.chats?.first.img != null)
                      Expanded(
                        child: Row(
                          children: [
                            CustomImage(
                              url: messageData?.chats?.first.img,
                              height: 30,
                              width: 30,
                              radius: 8,
                            ),
                          ],
                        ),
                      ),
                    12.horizontalSpace,
                    Text(
                      DateFormat("hh:mm a").format(
                        messageData?.chats?.first.date ?? DateTime.now(),
                      ),
                      style: Style.urbanistMedium(
                        size: 14,
                        color: Style.greyscale700,
                      ),
                      maxLines: 1,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
