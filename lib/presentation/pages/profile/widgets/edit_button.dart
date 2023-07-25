import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter/material.dart';

import '../../../components/components.dart';
import '../../../styles/style.dart';

class EditButton extends StatelessWidget {
  final VoidCallback onTap;

  const EditButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonsEffect(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: REdgeInsets.all(6),
          padding: REdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: Style.primary,
          ),
          child: Icon(
            FlutterRemix.pencil_fill,
            color: Style.white,
            size: 21.r,
          ),
        ),
      ),
    );
  }
}
