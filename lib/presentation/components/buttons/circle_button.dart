import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../styles/style.dart';
import 'buttons_effect.dart';

class CircleButton extends StatelessWidget {
  final bool isSelected;
  final VoidCallback? onTap;

  const CircleButton({super.key, required this.isSelected, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ButtonsEffect(
        child: Container(
            margin: REdgeInsets.all(8),
            padding: REdgeInsets.all(2),
            height: 20.r,
            width: 20.r,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Style.primary, width: 2.5),
            ),
            child: isSelected
                ? Container(
                    decoration: const BoxDecoration(
                      color: Style.primary,
                      shape: BoxShape.circle,
                    ),
                  )
                : const SizedBox.shrink()),
      ),
    );
  }
}
