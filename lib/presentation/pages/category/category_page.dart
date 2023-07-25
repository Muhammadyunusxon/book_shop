import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/home/home_provider.dart';
import '../../components/components.dart';
import '../../app_route.dart';
import '../../styles/style.dart';

class CategoryPage extends ConsumerWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final categories = ref.watch(homeProvider).categories;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            12.verticalSpace,
            const ResponsiveAppBar(title: "More Category"),
            24.verticalSpace,
            GridView.builder(
                shrinkWrap: true,
                padding: REdgeInsets.symmetric(horizontal: 24),
                itemCount: categories.length,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 8,
                  mainAxisExtent: 100.r,
                ),
                itemBuilder: (context, index) {
                  return ButtonsEffect(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {
                        AppRoute.goCategoryProductPage(
                            context, categories[index].title);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomImage(
                              url: categories[index].icon,
                              height: 60,
                              width: 60),
                          SizedBox(
                            width: 60.r,
                            child: Center(
                              child: Text(
                                categories[index].title ?? "",
                                style:
                                    Style.urbanistSemiBold(size: 16),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
