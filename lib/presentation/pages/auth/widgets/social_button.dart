import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import '../../../components/components.dart';
import '../../../styles/style.dart';

class SocialButton extends StatelessWidget {
  final String? title;
  final VoidCallback onTap;
  final String icon;
  final bool isLoading;

  const SocialButton(
      {Key? key,
      this.title,
      required this.onTap,
      required this.icon,
      required this.isLoading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonsEffect(
      child: InkWell(
        borderRadius: BorderRadius.circular(16.r),
        onTap: isLoading ? null : onTap,
        child: Container(
          height: 60.r,
          width: title == null ? null : double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              border:
                  Border.all(color: Style.greyscale200, width: 2.r)),
          padding: REdgeInsets.symmetric(horizontal: 32.r),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              isLoading
                  ? SizedBox(
                      height: 24.r,
                      width: 24.r,
                      child: CircularProgressIndicator(
                        color: Style.primary,
                        strokeWidth: 3.3.r,
                      ))
                  : Image.asset(
                      icon,
                      height: 24.r,
                      width: 24.r,
                    ),
              title != null
                  ? Row(
                      children: [
                        12.horizontalSpace,
                        Text(
                          "Continue with $title",
                          style: Style.urbanistSemiBold(size: 16),
                        ),
                      ],
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
