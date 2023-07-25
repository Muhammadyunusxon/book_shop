import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';

import '../../../styles/style.dart';

class NotificationSwitch extends StatelessWidget {
  final bool isActive;
  final Function(bool)? onChanged;
  final String title;

  const NotificationSwitch({
    Key? key,
    required this.isActive,
    this.onChanged,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.all(22),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.r),
          color: Style.containerColor),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: Style.urbanistSemiBold(),
            ),
          ),
          CupertinoSwitch(
              activeColor: Style.primary,
              value: isActive,
              onChanged: onChanged)
        ],
      ),
    );
  }
}
