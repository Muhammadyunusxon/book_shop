import 'package:book_shop/presentation/components/components.dart';
import 'package:book_shop/presentation/styles/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopButton extends StatelessWidget {
  final String heroTag;

  const PopButton({Key? key, required this.heroTag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonsEffect(
      child: Hero(
        tag: heroTag,
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            width: 48.r,
            height: 48.r,
            decoration: BoxDecoration(
              color: Style.black,
              borderRadius: BorderRadius.circular(10.r),
            ),
            alignment: Alignment.center,
            child: Icon(
              FlutterRemix.arrow_left_s_line,
              color: Style.white,
              size: 20.r,
            ),
          ),
        ),
      ),
    );
  }
}
