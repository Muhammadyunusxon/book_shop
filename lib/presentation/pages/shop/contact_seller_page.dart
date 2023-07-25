import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/components.dart';
import 'widgets/seller_contact_items.dart';

class ContactSellerPage extends StatelessWidget {
  const ContactSellerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const ResponsiveAppBar(title: 'Contact Seller'),
            32.verticalSpace,
            const ContactItems(
                icon: FlutterRemix.customer_service_fill,
                title: 'Chat with Seller'),
            24.verticalSpace,
            const ContactItems(
                icon: FlutterRemix.whatsapp_fill, title: 'WhatsApp'),
            24.verticalSpace,
            const ContactItems(
                icon: FlutterRemix.instagram_fill, title: 'Instagram'),
            24.verticalSpace,
            const ContactItems(
                icon: FlutterRemix.facebook_circle_fill, title: 'Facebook'),
            24.verticalSpace,
            const ContactItems(
                icon: FlutterRemix.twitter_fill, title: 'Twitter'),
            24.verticalSpace,
            const ContactItems(isSvg: true, title: 'TikTok')
          ],
        ),
      ),
    );
  }
}
