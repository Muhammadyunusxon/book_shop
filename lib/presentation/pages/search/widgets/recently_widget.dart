import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../styles/style.dart';
import 'search_button.dart';

List popularSearch = [
  "Play Mats",
  "Yoga Mats",
  "Art Class",
  "Dance Class",
  "Chicken",
  "Noodles"
];

List sponsorStores = [
  "The Cuddle Club",
  "Zen Yoga Studio",
  "La Tartine",
  "Little Picassos Nigeria",
  "OBC",
];

List recentlySearch = [
  "Yoga Mats for children",
  "Yoga Class",
  "Baby Food",
  "Baby Monitor",
  "Pancakes",
];

class RecentlyWidget extends StatelessWidget {
  final ValueChanged onTap;

  const RecentlyWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Searches",
            style: Style.urbanistSemiBold(size: 20),
          ),
          16.verticalSpace,
          Wrap(
            runSpacing: 12,
            children: [
              for (int i = 0; i < popularSearch.length; i++)
                SearchButton(title: popularSearch[i], onTap: onTap)
            ],
          ),
          24.verticalSpace,
          Text(
            "Popular Searches",
            style: Style.urbanistSemiBold(size: 20),
          ),
          16.verticalSpace,
          Wrap(
            runSpacing: 12,
            children: [
              for (int i = 0; i < popularSearch.length; i++)
                SearchButton(title: popularSearch[i], onTap: onTap)
            ],
          ),
          24.verticalSpace,
          Text(
            "Sponsored Stores",
            style: Style.urbanistSemiBold(size: 20),
          ),
          16.verticalSpace,
          Wrap(
            runSpacing: 12,
            children: [
              for (int i = 0; i < sponsorStores.length; i++)
                SearchButton(title: sponsorStores[i], onTap: onTap)
            ],
          )
        ],
      ),
    );
  }
}
