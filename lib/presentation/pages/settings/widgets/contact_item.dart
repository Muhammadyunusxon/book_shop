import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shop/widgets/seller_contact_items.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        32.verticalSpace,
        const ContactItems(
          icon: FlutterRemix.customer_service_fill,
          title: 'Support Chat',
        ),
        24.verticalSpace,
        const ContactItems(icon: FlutterRemix.whatsapp_fill, title: 'WhatsApp'),
        24.verticalSpace,
        const ContactItems(
            icon: FlutterRemix.instagram_fill, title: 'Instagram'),
        24.verticalSpace,
        const ContactItems(
            icon: FlutterRemix.facebook_circle_fill, title: 'Facebook'),
        24.verticalSpace,
        const ContactItems(icon: FlutterRemix.twitter_fill, title: 'Twitter'),
        24.verticalSpace,
        const ContactItems(isSvg: true, title: 'TikTok')
      ],
    );
  }
}
