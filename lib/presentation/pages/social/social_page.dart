import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import '../../../application/social/social_provider.dart';
import '../../app_route.dart';
import '../../styles/style.dart';
import 'widgets/socials_widgets.dart';

class SocialPage extends ConsumerStatefulWidget {
  const SocialPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SocialPageState();
}

class _SocialPageState extends ConsumerState<SocialPage> {
  final List<String> image = [
    "https://www.deliveryhero.com/wp-content/uploads/2021/01/TAR_5922.jpg",
    'https://images.ctfassets.net/trvmqu12jq2l/1LFP1rAaPMiEx5y11ZZv2F/5167948e81a58a08e516631e07ee154c/blog-hero-1208x1080-v115.14.01.jpg',
    'https://images.unsplash.com/photo-1566576721346-d4a3b4eaeb55?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGFja2FnZSUyMGRlbGl2ZXJ5fGVufDB8fDB8fA%3D%3D&w=1000&q=80',
  ];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(socialProvider.notifier).initial();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(socialProvider);
    final event = ref.read(socialProvider.notifier);
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: REdgeInsets.only(left: 16, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            51.verticalSpace,
            Container(
              height: 88.r,
              width: double.infinity,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Style.shadowSocials,
                      offset: const Offset(0, 4),
                      blurRadius: 18,
                    ),
                  ],
                  color: Style.white,
                  borderRadius: BorderRadius.circular(50)),
              child: Padding(
                padding: REdgeInsets.only(left: 14),
                child: SizedBox(
                  height: 60.r,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: state.shops.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () => AppRoute.goStoryPage(context),
                        child: Container(
                          height: 60.r,
                          width: 60.r,
                          margin: REdgeInsets.only(right: 7),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(state.shops[index].img ?? ''),
                                fit: BoxFit.cover,
                              ),
                              border: Border.all(
                                  color: Style.storyColor, width: 2),
                              shape: BoxShape.circle),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            20.verticalSpace,
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: state.socials.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                      padding: REdgeInsets.symmetric(horizontal: 6),
                      child: SocialsWidget(
                        state.socials[index].shop?.img ?? '',
                        state.socials[index].shop?.shopName ?? '',
                        state.socials[index].shop?.location?.title ?? '',
                        state.socials[index].text ?? '',
                        state.socials[index].img ?? '',
                        () {
                          event.changeSocialLike(state.socials[index].id);
                        },
                        '${state.socials[index].likesCount ?? ''}',
                        state.socialLikes
                            .contains(state.socials[index].id.toString()),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
