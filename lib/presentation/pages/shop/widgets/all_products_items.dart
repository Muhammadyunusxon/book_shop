import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../components/custom_network_image.dart';
import '../../../styles/style.dart';

class AllItems extends StatelessWidget {
  final String img, title, status;
  final int price;
  const AllItems(
      {super.key,
      required this.img,
      required this.title,
      required this.price,
      required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: REdgeInsets.only(bottom: 16),
      padding: REdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Style.greyscale50,
        boxShadow: const [
          BoxShadow(
            color: Style.white,
            offset: Offset(0, 4),
            blurRadius: 60,
          ),
        ],
        borderRadius: BorderRadius.circular(28.r),
      ),
      child: Row(
        children: [
          CustomImage(
            url: img,
            height: 120,
            width: 120,
            radius: 20,
          ),
          16.horizontalSpace,
          Expanded(
            child: Padding(
              padding: REdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (status.isNotEmpty)
                    Container(
                      padding:
                          REdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        gradient: Style.primaryGradiant,
                      ),
                      child: Text(
                        status,
                        style: Style.urbanistSemiBold(
                            size: 10, color: Style.white),
                      ),
                    ),
                  if (status.isNotEmpty) 9.verticalSpace,
                  SizedBox(
                    child: Text(
                      title,
                      style: Style.urbanistBold(size: 17),
                      maxLines: 2,
                    ),
                  ),
                  12.verticalSpace,
                  Text(
                    NumberFormat.currency(
                            locale: 'en_US', symbol: "N", decimalDigits: 0)
                        .format(price),
                    style: Style.urbanistBold(
                        color: Style.primary, size: 20),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
