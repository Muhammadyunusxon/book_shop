import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../infrastructure/models/models.dart';
import '../../../components/components.dart';
import '../../../styles/style.dart';

class CartProduct extends StatelessWidget {
  final CartlData cartProduct;

  const CartProduct({super.key, required this.cartProduct});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(color: Style.greyscale400),
        20.verticalSpace,
        Row(
          children: [
            CustomImage(
              url: cartProduct.product?.img,
              height: 80,
              width: 80,
              radius: 16,
            ),
            16.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      cartProduct.product?.name ?? '',
                      style: Style.urbanistBold(size: 20),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  12.verticalSpace,
                  Text(
                    NumberFormat.currency(
                            locale: 'en_US', symbol: "\$", decimalDigits: 0)
                        .format(cartProduct.product?.price ?? 0),
                    style: Style.urbanistBold(
                        color: Style.primary, size: 20),
                  )
                ],
              ),
            ),
            12.horizontalSpace,
            Column(
              children: [
                Container(
                  padding: REdgeInsets.symmetric(vertical: 9, horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Style.primary),
                      borderRadius: BorderRadius.circular(8.r)),
                  child: Text(
                    '${cartProduct.count}x',
                    style: Style.urbanistBold(
                        size: 12, color: Style.primary),
                  ),
                ),
                18.verticalSpace,
                const Icon(
                  FlutterRemix.edit_2_fill,
                  color: Style.primary,
                )
              ],
            )
          ],
        ),
        20.verticalSpace,
      ],
    );
  }
}
