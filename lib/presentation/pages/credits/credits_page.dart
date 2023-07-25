// ignore_for_file: deprecated_member_use

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../application/credit/credit_provider.dart';
import '../../components/components.dart';
import '../../styles/style.dart';

class CreditsPage extends ConsumerWidget {
  const CreditsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final state = ref.watch(creditProvider);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ResponsiveAppBar(
              title: "ezCredits",
              suffix: IconButton(
                splashRadius: 28.r,
                onPressed: () {},
                icon: Icon(
                  FlutterRemix.search_line,
                  size: 26.r,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: REdgeInsets.symmetric(horizontal: 24),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Transaction History",
                        style: Style.urbanistSemiBold(
                          size: 20,
                        ),
                      ),
                      TextButton(
                          onPressed: () {}, child: const Text("See All")),
                    ],
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.transactions.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: REdgeInsets.only(bottom: 12),
                          child: Row(
                            children: [
                              (state.transactions[index].image?.isNotEmpty ??
                                      false)
                                  ? CustomImage(
                                      url: state.transactions[index].image,
                                      height: 60,
                                      width: 60,
                                      radius: 100,
                                    )
                                  : Container(
                                      height: 60.r,
                                      width: 60.r,
                                      padding: REdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Style.primary
                                            .withOpacity(0.08),
                                      ),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Style.primary,
                                        ),
                                        child: Center(
                                          child: SvgPicture.asset(
                                            Assets.svgCard,
                                            color: Style.white,
                                            height: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                              20.horizontalSpace,
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    state.transactions[index].title ?? "",
                                    style: Style.urbanistSemiBold(),
                                    maxLines: 1,
                                  ),
                                  Text(
                                    state.transactions[index].date ?? "",
                                    style: Style.urbanistMedium(
                                        size: 14,
                                        color: Style.greyscale700),
                                  ),
                                ],
                              )),
                              Column(
                                children: [
                                  Text(
                                    NumberFormat.currency(
                                            locale: 'en_US',
                                            symbol: "N",
                                            decimalDigits: 0)
                                        .format(
                                            state.transactions[index].price ??
                                                0),
                                    style: Style.urbanistSemiBold(),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        state.transactions[index].type ?? "",
                                        style: Style.urbanistMedium(
                                            size: 14,
                                            color: Style.greyscale700),
                                      ),
                                      4.horizontalSpace,
                                      Container(
                                        padding: REdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6.r),
                                          gradient: state.transactions[index]
                                                      .status ==
                                                  "buy"
                                              ? Style.purpleGradiant
                                              : Style.primaryGradiant,
                                        ),
                                        child: Icon(
                                          FlutterRemix.arrow_up_line,
                                          color: Style.white,
                                          size: 12.r,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      })
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
