import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../components/buttons/like_button.dart';
import '../../../components/custom_network_image.dart';
import '../../../styles/style.dart';

class SocialsWidget extends ConsumerWidget {
  final void Function() onTap;
  final String img, shopTitle, location, description, socImg, likeCount;

  final bool isLike;
  const SocialsWidget(this.img, this.shopTitle, this.location, this.description,
      this.socImg, this.onTap, this.likeCount, this.isLike,
      {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: REdgeInsets.only(bottom: 34),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: Style.white,
          boxShadow: [
            BoxShadow(
              color: Style.shadowSocials,
              offset: const Offset(0, 4),
              blurRadius: 18,
            ),
          ]),
      child: Padding(
        padding: REdgeInsets.only(top: 20, left: 16),
        child: Column(
          children: [
            Row(
              children: [
                CustomImage(
                  url: img,
                  height: 32,
                  width: 32,
                  radius: 100,
                ),
                8.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shopTitle,
                      style: Style.urbanistSemiBold(size: 14),
                    ),
                    Text(
                      location,
                      style: Style.urbanistMedium(
                          size: 12, color: Style.grey),
                    ),
                  ],
                )
              ],
            ),
            10.verticalSpace,
            Padding(
              padding: REdgeInsets.only(top: 10, left: 16, right: 35),
              child: Text(
                description,
                style: Style.urbanistRegular(),
              ),
            ),
            22.verticalSpace,
            socImg.isNotEmpty
                ? CustomImage(url: socImg, height: 158, width: 331)
                : const SizedBox.shrink(),
            socImg.isNotEmpty ? 19.verticalSpace : 0.verticalSpace,
            Row(
              children: [
                LikeButton(onTap: onTap, isLike: isLike),
                8.horizontalSpace,
                Text(
                  likeCount,
                  style: Style.urbanistBold(size: 12),
                )
              ],
            ),
            18.verticalSpace
          ],
        ),
      ),
    );
  }
}
