import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../../application/social/social_provider.dart';
import '../../../styles/style.dart';
import '../../main/main_page.dart';

class StoryPage extends ConsumerStatefulWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  ConsumerState<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends ConsumerState<StoryPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  // late StoryNotifier event;
  final pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  final List<String> image = [
    "https://static.freundin.de/640x640/focal_900x460:901x461/images/2018-07/yoga-baum.jpg",
    'https://www.genesishealthclubs.com/media/images/ThinkstockPhotos-86527828.jpg',
    'https://www.mensjournal.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTk2MTM2OTM2NTc4NDkxOTA5/fit-man-doing-warriors-pose-yoga.jpg',
  ];
  final List<String> titles = [
    "Understanding the need to spread deeper aspects of yoga to reduce suffering we started uploading different yoga philosophies and practices on YouTube free for all.",
    "Unlike some workouts that target specific areas, yoga is a full-body resistance workout, stretching and strengthening nearly every muscle",
    "When you’ve never tried yoga, it can be intimidating, especially if you’ve been scoping the jaw-dropping, super bendy, pretzel-like poses your girlfriend practices each morning.",
  ];

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
        if (controller.value > 0.99) {
          if (ref.watch(socialProvider).currentIndex == 2) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => const MainPage()));
          }
          pageController.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn);
        }
      });
    controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(socialProvider);
    final event = ref.read(socialProvider.notifier);
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          physics: const ClampingScrollPhysics(),
          controller: pageController,
          onPageChanged: (s) {
            event.changeIndex(s);
            controller.reset();
            controller.repeat();
          },
          children: [
            ...image.map((e) => Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      foregroundDecoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Style.primary.withOpacity(0.26),
                            Style.primary.withOpacity(0),
                            Style.primary.withOpacity(0),
                            Style.primary.withOpacity(0.26)
                          ],
                        ),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        foregroundDecoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Style.blackColor.withOpacity(0.4),
                              Style.blackColor.withOpacity(0.4)
                            ],
                          ),
                        ),
                        child: CachedNetworkImage(
                          imageUrl: e,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          fit: BoxFit.cover,
                          errorWidget: (context, url, error) {
                            return Container(
                              decoration: BoxDecoration(
                                color: Style.grey,
                                borderRadius: BorderRadius.circular(16.r),
                              ),
                              alignment: Alignment.center,
                              child: const Icon(
                                FlutterRemix.image_line,
                                color: Style.blackColor,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SafeArea(
                      child: Padding(
                        padding: REdgeInsets.all(16),
                        child: Column(
                          children: [
                            const Spacer(),
                            Text(
                              titles[image.indexOf(e)],
                              style: Style.urbanistMedium(
                                  size: 21, color: Style.white),
                            ),
                            24.verticalSpace,
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            pageController.previousPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width / 2,
                            color: Style.transparent,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            pageController.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width / 2,
                            color: Style.transparent,
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      right: 16.r,
                      top: 80.r,
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Padding(
                          padding: REdgeInsets.all(8.0),
                          child: Icon(
                            FlutterRemix.close_fill,
                            color: Style.white,
                            size: 30.r,
                          ),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
        Align(
          alignment: Alignment.topCenter,
          child: SafeArea(
            child: Container(
              height: 4.r,
              width: MediaQuery.of(context).size.width,
              margin: REdgeInsets.only(left: 20, bottom: 10),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return AnimatedContainer(
                      margin: REdgeInsets.only(right: 8),
                      height: 4.r,
                      width: (MediaQuery.of(context).size.width - 60.r) / 3,
                      decoration: BoxDecoration(
                        color: state.currentIndex >= index
                            ? Style.primary
                            : Style.white,
                        borderRadius: BorderRadius.circular(122.r),
                      ),
                      duration: const Duration(milliseconds: 500),
                      child: state.currentIndex == index
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(122.r),
                              child: LinearProgressIndicator(
                                value: controller.value,
                                valueColor: const AlwaysStoppedAnimation<Color>(
                                    Style.primary),
                                backgroundColor: Style.white,
                              ),
                            )
                          : state.currentIndex > index
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(122.r),
                                  child: const LinearProgressIndicator(
                                    value: 1,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Style.primary),
                                    backgroundColor: Style.white,
                                  ),
                                )
                              : const SizedBox.shrink(),
                    );
                  }),
            ),
          ),
        ),
      ],
    ));
  }
}
