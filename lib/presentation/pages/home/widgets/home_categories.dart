import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import '../../../../application/home/home_provider.dart';
import '../../../components/components.dart';
import '../../../app_route.dart';
import '../../../styles/style.dart';

class HomeCategories extends ConsumerWidget {
  const HomeCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final categories = ref.watch(homeProvider).categories;
    return Padding(
      padding: REdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Categories ",
            style: Style.urbanistSemiBold(size: 18),
          ),
          18.verticalSpace,
          SizedBox(
            height: 130.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: categories.isEmpty ? 0 : 7,
              itemBuilder: (BuildContext context, int index) {
                return ButtonsEffect(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {
                      if (index == 6) {
                        AppRoute.goMoreCategory(context);
                      } else {
                        AppRoute.goCategoryProductPage(
                            context, categories[index].title);
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: REdgeInsets.only(right: 14),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: index == 1
                                ? const Color(0xffEBF4F1)
                                : index == 2
                                    ? const Color(0xffF3F3EA)
                                    : index == 3
                                        ? const Color(0xffF3E9DD)
                                        : index == 4
                                            ? const Color(0xffF8ECEC)
                                            : index == 5
                                                ? const Color(0xffF8F5DE)
                                                : const Color(0xffF9E9D2),
                          ),
                          padding: REdgeInsets.all(16),
                          child: CustomImage(
                            url:categories[index].icon,
                            height: 50,
                            width: 50,
                          ),
                        ),
                        SizedBox(
                          width: 60.r,
                          child: Center(
                            child: Text(
                              index == 6
                                  ? "More"
                                  : categories[index].title ?? "",
                              style: Style.urbanistSemiBold(size: 14),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
