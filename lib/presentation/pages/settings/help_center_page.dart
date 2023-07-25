import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../../components/components.dart';
import '../../styles/style.dart';
import 'widgets/contact_item.dart';
import 'widgets/faq_item.dart';

class HelpCenterPage extends StatefulWidget {
  const HelpCenterPage({super.key});

  @override
  State<HelpCenterPage> createState() => _HelpCenterPageState();
}

class _HelpCenterPageState extends State<HelpCenterPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: Scaffold(
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  pinned: true,
                  backgroundColor: Style.white,
                  leading: IconButton(
                    splashRadius: 26.r,
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.arrow_back, size: 26.r),
                  ),
                  title: Text(
                    "Help Center",
                    style: Style.urbanistBold(size: 24),
                  ),
                  actions: [
                    IconButton(
                        splashRadius: 28.r,
                        onPressed: () {},
                        icon: SvgPicture.asset(Assets.svgMoreCircle)),
                    8.horizontalSpace,
                  ],
                  bottom: TabBar(
                    controller: tabController,
                    labelStyle: Style.urbanistSemiBold(size: 16),
                    indicatorColor: Style.primary,
                    indicatorWeight: 3,
                    padding: REdgeInsets.symmetric(horizontal: 24),
                    indicatorPadding: REdgeInsets.symmetric(horizontal: 6),
                    splashBorderRadius: BorderRadius.circular(6),
                    unselectedLabelColor: Style.greyscale500,
                    labelColor: Style.primary,
                    tabs: const [
                      Tab(text: "FAQ"),
                      Tab(text: "Contact us"),
                    ],
                  ),
                )
              ];
            },
            body: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: tabController,
              children: const [
                FaqItem(),
                ContactItem(),
              ],
            )),
      ),
    );
  }
}
