import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import '../../../application/shop/shop_provider.dart';
import '../../components/components.dart';
import '../../styles/style.dart';
import 'widgets/chart.dart';
import 'widgets/ratings.dart';
import 'widgets/users_comment.dart';

class ReviewsPage extends ConsumerWidget {
  const ReviewsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(shopProvider);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const ResponsiveAppBar(title: 'Rating & Reviews'),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    33.verticalSpace,
                    Padding(
                      padding: REdgeInsets.symmetric(horizontal: 24),
                      child: const Divider(
                        color: Style.grey,
                      ),
                    ),
                    32.verticalSpace,
                    const ReviewsChart(),
                    24.verticalSpace,
                    Padding(
                      padding: REdgeInsets.symmetric(horizontal: 24),
                      child: const Divider(
                        color: Style.grey,
                      ),
                    ),
                    32.verticalSpace,
                    ReviewRatings(
                        itemCount: state.listOfNums.length,
                        nums: state.listOfNums),
                    24.verticalSpace,
                    Padding(
                      padding: REdgeInsets.symmetric(horizontal: 24),
                      child: const Divider(
                        color: Style.grey,
                      ),
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: REdgeInsets.symmetric(horizontal: 24),
                      itemCount: state.friends.length,
                      itemBuilder: (BuildContext context, int index) {
                        return UsersComment(
                            img: state.friends[index].avatar ?? '',
                            name: state.friends[index].firstName ?? '',
                            lastName: state.friends[index].lastName ?? '',
                            comment: state.friends[index].comment ?? '',
                            likesCount: state.friends[index].likesCount ?? '',
                            time: state.friends[index].commentTime ?? '',
                            index: index);
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
