import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import '../../../components/components.dart';
import '../../../styles/style.dart';

class AddressItem extends StatelessWidget {
  final String? title;
  final bool isActive;
  final VoidCallback onTap;

  const AddressItem({
    super.key,
    required this.title,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.only(bottom: 24),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: REdgeInsets.all(18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.r),
            color: Style.white,
            boxShadow: Style.boxShadow,
          ),
          child: Row(
            children: [
              Container(
                height: 52.r,
                width: 52.r,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Style.greenTransparent),
                child: Container(
                  margin: REdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Style.primary,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      Assets.svgLocationWhite,
                    ),
                  ),
                ),
              ),
              16.horizontalSpace,
              Expanded(
                child: Text(
                  title ?? "",
                  maxLines: 2,
                ),
              ),
              CircleButton(isSelected: isActive),
            ],
          ),
        ),
      ),
    );
  }
}
