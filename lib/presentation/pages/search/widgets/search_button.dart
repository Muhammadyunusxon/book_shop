import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../components/components.dart';
import '../../../styles/style.dart';

class SearchButton extends StatelessWidget {
  final String title;
  final ValueChanged onTap;

  const SearchButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.only(right: 12),
      child: ButtonsEffect(
        child: InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: () => onTap(title),
          child: Container(
            decoration: BoxDecoration(
                color: Style.white,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: Style.primary,
                )),
            padding: REdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Text(
              title,
              style: Style.urbanistSemiBold(
                  size: 16, color: Style.primary),
            ),
          ),
        ),
      ),
    );
  }
}
