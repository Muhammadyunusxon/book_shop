import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import '../../../../application/home/home_provider.dart';
import '../../../components/components.dart';
import '../../../app_route.dart';
import '../../../styles/style.dart';

class HomeStory extends ConsumerWidget {
  const HomeStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final state = ref.watch(homeProvider);
    return SizedBox(
      height: 160.r,
      child: ListView.builder(
          // physics: const BouncingScrollPhysics(),
          itemCount: state.storyList.length,
          padding: REdgeInsets.only(left: 24),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: REdgeInsets.only(right: 18),
              child: GestureDetector(
                onTap: () => AppRoute.goToHomeStoryPage(context,
                    image: state.storyList[index].img ?? '',
                    title: state.storyList[index].title ?? ''),
                child: Stack(
                  children: [
                    CustomImage(
                      url: state.storyList[index].img,
                      height: 160,
                      width: 120,
                      radius: 20,
                    ),
                    Positioned(
                        bottom: 10,
                        child: SizedBox(
                          width: 120.r,
                          child: Padding(
                            padding: REdgeInsets.only(left: 8),
                            child: Text(
                              state.storyList[index].title ?? "",
                              style: Style.urbanistSemiBold(
                                color: Style.white,
                                size: 14,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            );
          }),
    );
  }
}
