import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../styles/style.dart';

class ReviewsChart extends StatelessWidget {
  const ReviewsChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                '4.8',
                style: Style.urbanistBold(size: 48),
              ),
              14.verticalSpace,
              SizedBox(
                height: 22.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: REdgeInsets.only(right: 10),
                      child: SvgPicture.asset(
                        index != 4 ? Assets.svgStar : Assets.svgSemiStar,
                        height: 20.h,
                        width: 20.w,
                      ),
                    );
                  },
                ),
              ),
              14.verticalSpace,
              Text(
                '(4.8k reviews)',
                style: Style.urbanistMedium(size: 18),
              )
            ],
          ),
          SizedBox(
            height: 142.h,
            child: const VerticalDivider(
              color: Style.grey,
            ),
          ),
          16.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    '5',
                    style: Style.urbanistBold(size: 16),
                  ),
                  Padding(
                    padding: REdgeInsets.only(left: 8),
                    child: Container(
                      padding: REdgeInsets.only(right: 20),
                      width: 175.r,
                      height: 6.r,
                      decoration: BoxDecoration(
                          color: Style.greyscale300,
                          borderRadius: BorderRadius.circular(100)),
                      child: Container(
                        height: 6.r,
                        decoration: BoxDecoration(
                            color: Style.primary,
                            borderRadius: BorderRadius.circular(100)),
                      ),
                    ),
                  )
                ],
              ),
              8.verticalSpace,
              Row(
                children: [
                  Text(
                    '4',
                    style: Style.urbanistBold(size: 16),
                  ),
                  Padding(
                    padding: REdgeInsets.only(left: 8),
                    child: Container(
                      padding: REdgeInsets.only(right: 55),
                      width: 175.r,
                      height: 6.r,
                      decoration: BoxDecoration(
                          color: Style.greyscale300,
                          borderRadius: BorderRadius.circular(100)),
                      child: Container(
                        height: 6.r,
                        decoration: BoxDecoration(
                            color: Style.primary,
                            borderRadius: BorderRadius.circular(100)),
                      ),
                    ),
                  )
                ],
              ),
              8.verticalSpace,
              Row(
                children: [
                  Text(
                    '3',
                    style: Style.urbanistBold(size: 16),
                  ),
                  Padding(
                    padding: REdgeInsets.only(left: 8),
                    child: Container(
                      padding: REdgeInsets.only(right: 150),
                      width: 175.r,
                      height: 6.r,
                      decoration: BoxDecoration(
                          color: Style.greyscale300,
                          borderRadius: BorderRadius.circular(100)),
                      child: Container(
                        height: 6.r,
                        decoration: BoxDecoration(
                            color: Style.primary,
                            borderRadius: BorderRadius.circular(100)),
                      ),
                    ),
                  )
                ],
              ),
              8.verticalSpace,
              Row(
                children: [
                  Text(
                    '2',
                    style: Style.urbanistBold(size: 16),
                  ),
                  Padding(
                    padding: REdgeInsets.only(left: 8),
                    child: Container(
                      padding: REdgeInsets.only(right: 130),
                      width: 175.r,
                      height: 6.r,
                      decoration: BoxDecoration(
                          color: Style.greyscale300,
                          borderRadius: BorderRadius.circular(100)),
                      child: Container(
                        height: 6.r,
                        decoration: BoxDecoration(
                            color: Style.primary,
                            borderRadius: BorderRadius.circular(100)),
                      ),
                    ),
                  )
                ],
              ),
              8.verticalSpace,
              Row(
                children: [
                  Text(
                    '1',
                    style: Style.urbanistBold(size: 16),
                  ),
                  Padding(
                    padding: REdgeInsets.only(left: 8),
                    child: Container(
                      padding: REdgeInsets.only(right: 155),
                      width: 175.r,
                      height: 6.r,
                      decoration: BoxDecoration(
                          color: Style.greyscale300,
                          borderRadius: BorderRadius.circular(100)),
                      child: Container(
                        height: 6.r,
                        decoration: BoxDecoration(
                            color: Style.primary,
                            borderRadius: BorderRadius.circular(100)),
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
