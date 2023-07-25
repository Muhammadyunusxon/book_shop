import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../components/components.dart';
import '../../../../styles/style.dart';

class StatusItems extends StatelessWidget {
  const StatusItems({super.key});

  @override
  Widget build(BuildContext context) {
    final List lst = [
      'Order Placed',
      'Order Accepted',
      'Order Shipped',
      'Order Delivered'
    ];
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: lst.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: REdgeInsets.only(bottom: 28),
          padding: REdgeInsets.symmetric(vertical: 24, horizontal: 20),
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
          child: Row(
            children: [
              Container(
                height: 52.r,
                width: 52.r,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Style.secondary100),
                child: Container(
                  margin: REdgeInsets.all(8),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Style.primary),
                  child: Center(
                    child: SvgPicture.asset(
                      Assets.svgLocationWhite,
                    ),
                  ),
                ),
              ),
              16.horizontalSpace,
              Text(
                lst[index],
                style: Style.urbanistBold(),
              ),
              const Spacer(),
              CustomCheckbox(isActive: index == 0 ? true : false, onTap: () {})
            ],
          ),
        );
      },
    );
  }
}
