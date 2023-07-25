import 'package:book_shop/presentation/components/components.dart';
import 'package:book_shop/presentation/styles/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LikeButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool isLike;

  const LikeButton({Key? key, required this.onTap, required this.isLike})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonsEffect(
      child: InkWell(
        onTap: onTap,
        child: Padding(
            padding: REdgeInsets.all(6),
            child: Container(
              padding: REdgeInsets.all(4),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: isLike
                          ? Style.red
                          : Style.transparent)),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isLike ? Style.red : Style.white),
                child: Padding(
                  padding: REdgeInsets.all(8),
                  child: Icon(
                    isLike ? FlutterRemix.heart_fill : FlutterRemix.heart_line,
                    color: isLike ? Style.white : Style.red,
                    size: isLike ? 18 : 22,
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
