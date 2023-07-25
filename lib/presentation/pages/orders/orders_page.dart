import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter/material.dart';

import '../../styles/style.dart';
import 'widgets/active_orders.dart';
import 'widgets/cancelled_orders.dart';
import 'widgets/empty_orders.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(horizontal: 24),
      child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                backgroundColor: Style.white,
                title: Text(
                  "Orders",
                  style: Style.urbanistBold(size: 24),
                ),
                actions: [
                  IconButton(
                      splashRadius: 28.r,
                      onPressed: () {},
                      icon: Icon(
                        FlutterRemix.search_line,
                        size: 28.r,
                      )),
                  8.horizontalSpace,
                ],
                bottom: TabBar(
                  controller: tabController,
                  labelStyle: Style.urbanistSemiBold(size: 16),
                  indicatorColor: Style.primary,
                  indicatorWeight: 3,
                  indicatorPadding: REdgeInsets.symmetric(horizontal: 6),
                  splashBorderRadius: BorderRadius.circular(6),
                  unselectedLabelColor: Style.greyscale500,
                  labelColor: Style.primary,
                  tabs: const [
                    Tab(text: "Active"),
                    Tab(text: "Completed"),
                    Tab(text: "Cancelled"),
                  ],
                ),
              )
            ];
          },
          body: TabBarView(
            controller: tabController,
            children: const [
              ActiveOrders(),
              EmptyOrders(title: "Completed"),
              CancelledOrders(),
            ],
          )),
    );
  }
}
