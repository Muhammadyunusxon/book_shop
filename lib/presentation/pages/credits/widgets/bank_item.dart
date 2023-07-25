import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

import '../../../../infrastructure/models/models.dart';
import '../../../components/components.dart';
import '../../../styles/style.dart';

class BankItem extends StatelessWidget {
  final BankData bankData;
  final bool isActive;
  final bool isDefault;
  final VoidCallback onSelect;

  const BankItem({
    super.key,
    required this.bankData,
    required this.isActive,
    required this.onSelect,
    required this.isDefault,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.only(bottom: 24),
      child: ButtonsEffect(
        child: GestureDetector(
          onTap: onSelect,
          child: Container(
            padding: REdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Style.white,
              borderRadius: BorderRadius.circular(24.r),
              boxShadow: Style.boxShadow,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            bankData.displayName ?? "",
                            style: Style.urbanistSemiBold(),
                          ),
                          8.horizontalSpace,
                          isDefault
                              ? Container(
                                  padding: REdgeInsets.symmetric(
                                      horizontal: 12, vertical: 4),
                                  decoration: BoxDecoration(
                                      color: Style.greenTransparent,
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Text(
                                    'Default',
                                    style: Style.urbanistSemiBold(
                                        size: 12,
                                        color: Style.primary),
                                  ),
                                )
                              : const SizedBox.shrink()
                        ],
                      ),
                      6.verticalSpace,
                      Text(
                        bankData.displayName ?? "",
                        style: Style.urbanistMedium(
                          size: 14,
                          color: Style.greyscale700,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: REdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border:
                        Border.all(color: Style.primary, width: 2.r),
                  ),
                  child: Container(
                    height: 12.r,
                    width: 12.r,
                    decoration: BoxDecoration(
                      gradient:
                          isActive ? Style.primaryGradiant : null,
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
