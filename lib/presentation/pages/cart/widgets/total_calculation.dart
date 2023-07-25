import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../styles/style.dart';

class TotalPrice extends StatelessWidget {
  final int totalPrice;

  const TotalPrice({super.key, required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 24, vertical: 25),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Style.white,
        boxShadow: Style.boxShadow,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Subtotal',
                style: Style.urbanistRegular(size: 14),
              ),
              const Spacer(),
              Text(
                NumberFormat.currency(
                        locale: 'en_US', symbol: "\$", decimalDigits: 0)
                    .format(totalPrice),
                style: Style.urbanistBold(size: 16),
              ),
            ],
          ),
          22.verticalSpace,
          Row(
            children: [
              Text(
                'Delivery Fee',
                style: Style.urbanistRegular(size: 14),
              ),
              const Spacer(),
              Text(
                '\$3,000',
                style: Style.urbanistBold(size: 16),
              ),
            ],
          ),
          20.verticalSpace,
          const Divider(
            color: Style.greyscale400,
          ),
          20.verticalSpace,
          Row(
            children: [
              Text(
                'Total',
                style: Style.urbanistRegular(size: 14),
              ),
              const Spacer(),
              Text(
                NumberFormat.currency(
                        locale: 'en_US', symbol: "\$", decimalDigits: 0)
                    .format(totalPrice + 3000),
                style: Style.urbanistBold(size: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
