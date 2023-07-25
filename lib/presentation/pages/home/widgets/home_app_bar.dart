import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import '../../../../infrastructure/local_storage/g_grocery_storage.dart';
import '../../../components/components.dart';
import '../../../app_route.dart';
import '../../../styles/style.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: Style.primary, width: 2),
            ),
            child: LocalStorage.getUser()?.img?.isEmpty ?? true
                ? ClipOval(
                    child: Image.asset(
                    // Assets.pngNoAvatar,
                    "",
                    height: 50,
                    width: 50,
                  ))
                : CustomImage(
                    url: LocalStorage.getUser()?.img ?? "",
                    height: 50,
                    width: 50,
                    radius: 100,
                  ),
          ),
          16.horizontalSpace,
          Expanded(
            child: LocalStorage.getUser() == null
                ? Row(
                    children: [
                      TextButton(
                        onPressed: () => AppRoute.goSplash(context),
                        child: const Text("Sign in or Sign up"),
                      ),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Deliver to",
                        style: Style.urbanistRegular(
                          size: 16,
                          color: Style.greyscale600,
                        ),
                        maxLines: 1,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                LocalStorage.getUser()
                                        ?.location
                                        ?.first
                                        .title ??
                                    "",
                                style: Style.urbanistSemiBold(size: 16),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(100),
            onTap: () => AppRoute.goNotification(context),
            child: Container(
              padding: REdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Style.greyscale200),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(Assets.svgNotification),
            ),
          ),
        ],
      ),
    );
  }
}
