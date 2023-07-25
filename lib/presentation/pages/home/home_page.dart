import 'package:book_shop/presentation/styles/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter/material.dart';
import '../../components/components.dart';
import '../../app_route.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/recommended_products.dart';
import 'widgets/home_categories.dart';
import 'widgets/stores_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        16.verticalSpace,
        Consumer(builder: (context, ref, child) {
          return const HomeAppBar();
        }),
        8.verticalSpace,
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                24.verticalSpace,
                Padding(
                  padding: REdgeInsets.symmetric(horizontal: 24),
                  child: CustomTextField(
                    readOnly: true,
                    onTap: () => AppRoute.goSearch(context),
                    hintText: "Search fresh groceries",
                    prefixIcon: Padding(
                      padding: REdgeInsets.only(left: 12, right: 8),
                      child: Icon(
                        FlutterRemix.search_line,
                        size: 24.r,
                        color: Style.primary,
                      ),
                    ),
                  ),
                ),
                24.verticalSpace,
                20.verticalSpace,
                const HomeCategories(),
                12.verticalSpace,
                const StoresList(),
                8.verticalSpace,
                const RecommendedProducts(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
