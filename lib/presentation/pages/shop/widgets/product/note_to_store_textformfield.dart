import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../styles/style.dart';

class NoteToStoreTextformField extends StatelessWidget {
  const NoteToStoreTextformField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 5,
      decoration: InputDecoration(
          hintText: 'Note to store (optional)',
          hintStyle: Style.urbanistMedium(
            size: 14,
            color: Style.greyscale500,
          ),
          filled: true,
          fillColor: Style.greyscale50,
          contentPadding: REdgeInsets.only(top: 20, left: 20)),
    );
  }
}
