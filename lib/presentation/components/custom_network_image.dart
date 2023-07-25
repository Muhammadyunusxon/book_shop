import 'dart:io';

import 'package:book_shop/presentation/styles/style.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class CustomImage extends StatelessWidget {
  final String? url;
  final double? height;
  final double? width;
  final double radius;
  final BoxFit boxFit;

  const CustomImage({
    Key? key,
    required this.url,
     this.height,
     this.width,
    this.radius = 12,
    this.boxFit = BoxFit.cover,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius.r),
      child: url?.isEmpty ?? true
          ? Container(
              height: height?.r,
              width: width?.r,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius.r),
                color: Style.shimmerBase,
              ),
              alignment: Alignment.center,
              child: Lottie.asset(Assets.lottieNoImage),
            )
          : url!.contains("assets/")
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(radius.r),
                  child: Image.asset(
                    url!,
                    height: height?.r,
                    width: width?.r,
                    fit: boxFit,
                  ))
              : url?.contains("http") ?? true
                  ? CachedNetworkImage(
                      height: height?.r,
                      width: width?.r,
                      imageUrl: url ?? "",
                      fit: boxFit,
                      progressIndicatorBuilder: (context, url, progress) {
                        return Container(
                          height: height?.r,
                          width: width?.r,
                          decoration: BoxDecoration(
                            color: Style.shimmerBase,
                          ),
                        );
                      },
                      errorWidget: (context, url, error) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(radius.r),
                            color: Style.shimmerBase,
                          ),
                          alignment: Alignment.center,
                          child: Lottie.asset(Assets.lottieNoImage),
                        );
                      },
                    )
                  : Image.file(
                      File(url ?? ""),
                      height: height?.r,
                      width: width?.r,
                      fit: boxFit,
                    ),
    );
  }
}
