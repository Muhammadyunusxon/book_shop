// ignore_for_file: deprecated_member_use
import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../application/product/product_provider.dart';
import '../../../application/shop/shop_provider.dart';
import '../../../infrastructure/local_storage/g_grocery_storage.dart';
import '../../components/components.dart';
import '../../app_route.dart';
import '../../styles/style.dart';
import 'widgets/logo_and_title.dart';
import 'widgets/play_time_items.dart';
import 'widgets/popular_items.dart';
import 'widgets/shop_appbar.dart';
import 'widgets/shop_items.dart';

class ShopPage extends ConsumerWidget {
  final int index;

  const ShopPage(this.index, {super.key});

  @override
  @override
  Widget build(BuildContext context, ref) {
    final shopState = ref.watch(shopProvider);
    final productState = ref.watch(productProvider);

    return Scaffold(
      body: shopState.shops.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : Stack(
              children: [
                NestedScrollView(
                    headerSliverBuilder: (BuildContext context, bool innerBox) {
                      return [
                        ShopAppBar(
                            shopName: shopState.shops[index].shopName ?? "",
                            img: shopState.shops[index].img ?? '')
                      ];
                    },
                    body: SingleChildScrollView(
                      physics: const NeverScrollableScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          24.verticalSpace,
                          Padding(
                              padding: REdgeInsets.only(left: 24),
                              child: LogoAndTitle(
                                img: shopState.shops[index].img ?? '',
                                name: shopState.shops[index].shopName ?? '',
                              )),
                          18.verticalSpace,
                          ButtonsEffect(
                            child: ShopItem(
                              icon: Assets.svgStar,
                              title: '${shopState.shops[index].rate}',
                              onTap: () {
                                AppRoute.goToReviewsPage(context);
                              },
                              desc:
                                  '(${shopState.shops[index].rate ?? ''}k reviews)',
                            ),
                          ),
                          ButtonsEffect(
                            child: ShopItem(
                              icon: Assets.svgDiscount,
                              title: 'Available Discounts',
                              onTap: () =>
                                  AppRoute.goToDiscountPage(context),
                              desc: '',
                            ),
                          ),
                          ButtonsEffect(
                            child: ShopItem(
                              isActive: false,
                              icon: Assets.svgStar,
                              title: '2 Hours',
                              onTap: () {},
                              desc: 'Response time',
                            ),
                          ),
                          ButtonsEffect(
                            child: ShopItem(
                              isActive: false,
                              icon: Assets.svgLocationPrimary,
                              title: (shopState.shops[index].location?.title
                                              ?.length ??
                                          0) >
                                      14
                                  ? shopState.shops[index].location?.title
                                          ?.substring(0, 14) ??
                                      ''
                                  : shopState.shops[index].location?.title ??
                                      "",
                              onTap: () {},
                              desc: '',
                            ),
                          ),
                          ButtonsEffect(
                            child: ShopItem(
                              icon: Assets.svgMessagePrimary,
                              title: 'Contact Seller',
                              onTap: () =>
                                  AppRoute.goToSellerContactPage(context),
                              desc: '',
                            ),
                          ),
                          24.verticalSpace,
                          Padding(
                            padding: REdgeInsets.only(left: 24),
                            child: Text(
                              'Popular',
                              style: Style.urbanistBold(size: 24),
                            ),
                          ),
                          SizedBox(
                            height: 350.r,
                            child: ListView.builder(
                              padding: REdgeInsets.symmetric(
                                  vertical: 24, horizontal: 24),
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: productState.products.length,
                              itemBuilder: (BuildContext context, int index) {
                                return ButtonsEffect(
                                  child: GestureDetector(
                                      onTap: () =>
                                          AppRoute.goToProductPage(
                                              context,
                                              index: index),
                                      child: PopularItems(
                                        isOnCart:
                                            LocalStorage.getSingleCount(
                                                        productState
                                                                .products[index]
                                                                .id ??
                                                            0)
                                                    ?.productId ==
                                                productState.products[index].id,
                                        isStatus: productState
                                                .products[index].status !=
                                            null,
                                        title:
                                            productState.products[index].name ??
                                                '',
                                        rating:
                                            '${productState.products[index].rate ?? ''}',
                                        price: productState
                                                .products[index].price ??
                                            0,
                                        status:
                                            '${productState.products[index].status}',
                                        img: productState.products[index].img ??
                                            '',
                                        onLike: () {
                                          ref
                                              .read(productProvider.notifier)
                                              .changeProductLike(productState
                                                  .products[index].id);
                                        },
                                        isLike: productState.productLikes
                                            .contains(productState
                                                .products[index].id
                                                .toString()),
                                      )),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: REdgeInsets.symmetric(horizontal: 24),
                            child: Row(
                              children: [
                                Text(
                                  'Playtime',
                                  style: Style.urbanistBold(size: 24),
                                ),
                                const Spacer(),
                                TextButton(
                                  onPressed: () =>
                                      AppRoute.goToSeeAllPage(context,
                                          title: 'Playtime'),
                                  child: Text(
                                    'See All',
                                    style: Style.urbanistBold(
                                        size: 16,
                                        color: Style.primary),
                                  ),
                                )
                              ],
                            ),
                          ),
                          20.verticalSpace,
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            padding: REdgeInsets.symmetric(horizontal: 24),
                            shrinkWrap: true,
                            itemCount: productState.products.isNotEmpty ? 3 : 0,
                            itemBuilder: (BuildContext context, int index) {
                              return ButtonsEffect(
                                child: GestureDetector(
                                    onTap: () => AppRoute.goToProductPage(
                                        context,
                                        index: index),
                                    child: PlayTimeItems(
                                      isOnCart: LocalStorage.getSingleCount(
                                                  productState
                                                          .products[index].id ??
                                                      0)
                                              ?.productId ==
                                          productState.products[index].id,
                                      product: productState.products[index],
                                      onLike: () {
                                        ref
                                            .read(productProvider.notifier)
                                            .changeProductLike(productState
                                                .products[index].id);
                                      },
                                      isLike: productState.productLikes
                                          .contains(productState
                                              .products[index].id
                                              .toString()),
                                    )),
                              );
                            },
                          ),
                          24.verticalSpace,
                          Padding(
                            padding: REdgeInsets.symmetric(horizontal: 24),
                            child: Row(
                              children: [
                                Text(
                                  'Mealtime',
                                  style: Style.urbanistBold(size: 24),
                                ),
                                const Spacer(),
                                TextButton(
                                  onPressed: () =>
                                      AppRoute.goToSeeAllPage(context,
                                          title: 'Mealtime'),
                                  child: Text(
                                    'See All',
                                    style: Style.urbanistBold(
                                        size: 16,
                                        color: Style.primary),
                                  ),
                                )
                              ],
                            ),
                          ),
                          20.verticalSpace,
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            padding: REdgeInsets.symmetric(horizontal: 24),
                            shrinkWrap: true,
                            itemCount: productState.products.isNotEmpty ? 3 : 0,
                            itemBuilder: (BuildContext context, int index) {
                              return ButtonsEffect(
                                child: GestureDetector(
                                    onTap: () => AppRoute.goToProductPage(
                                        context,
                                        index: index),
                                    child: PlayTimeItems(
                                      isOnCart: LocalStorage.getSingleCount(
                                                  productState
                                                          .products[index].id ??
                                                      0)
                                              ?.productId ==
                                          productState.products[index].id,
                                      product: productState.products[index],
                                      onLike: () {
                                        ref
                                            .read(productProvider.notifier)
                                            .changeProductLike(productState
                                                .products[index].id);
                                      },
                                      isLike: productState.productLikes
                                          .contains(productState
                                              .products[index].id
                                              .toString()),
                                    )),
                              );
                            },
                          ),
                          50.verticalSpace,
                        ],
                      ),
                    )),
                Positioned(
                    top: MediaQuery.of(context).padding.top + 4.r,
                    left: 18.r,
                    right: 24.r,
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: Icon(
                              FlutterRemix.arrow_left_line,
                              size: 26.r,
                            )),
                        const Spacer(),
                        LikeButton(
                            onTap: () {
                              ref
                                  .read(shopProvider.notifier)
                                  .changeShopLike(shopState.shops[index].id);
                            },
                            isLike: shopState.shopLikes.contains(
                                shopState.shops[index].id.toString())),
                        24.horizontalSpace,
                        SvgPicture.asset(
                          Assets.svgSend,
                          color: Style.black,
                        ),
                      ],
                    ))
              ],
            ),
    );
  }
}
