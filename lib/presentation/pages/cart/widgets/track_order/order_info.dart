import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../styles/style.dart';

class OrderInfo extends StatelessWidget {
  final int? totalPrice;

  const OrderInfo({super.key, required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: REdgeInsets.only(bottom: 28),
      padding: REdgeInsets.symmetric(vertical: 35, horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Style.containerColor,
        boxShadow: const [
          BoxShadow(
            color: Style.greyscale200,
            offset: Offset(0, 4),
            blurRadius: 60,
          ),
        ],
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Amount Paid',
                style: Style.urbanistMedium(
                    color: Style.greyscale700),
              ),
              const Spacer(),
              Text(
                NumberFormat.currency(
                        locale: 'en_US', symbol: "N", decimalDigits: 0)
                    .format(totalPrice ?? 205.300),
                style: Style.urbanistBold(),
              ),
            ],
          ),
          20.verticalSpace,
          Row(
            children: [
              Text(
                'Delivery Date',
                style: Style.urbanistMedium(
                    color: Style.greyscale700),
              ),
              const Spacer(),
              Text(
                DateFormat.yMMMEd().format(DateTime.now()),
                style: Style.urbanistBold(),
              ),
            ],
          ),
          20.verticalSpace,
          Row(
            children: [
              Text(
                'Tracking Number',
                style: Style.urbanistMedium(
                    color: Style.greyscale700),
              ),
              const Spacer(),
              Text(
                '#001002AR',
                style: Style.urbanistBold(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
