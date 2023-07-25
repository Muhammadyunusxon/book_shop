import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import '../../../application/cart/cart_provider.dart';
import '../../../application/product/product_provider.dart';
import '../../../infrastructure/models/models.dart';
import '../../components/components.dart';
import '../../styles/style.dart';
import '../shop/widgets/product/increase_and_decrease_button.dart';
import '../shop/widgets/product/note_to_store_textformfield.dart';
import '../shop/widgets/product/product_image_items.dart';
import '../shop/widgets/product/review_item.dart';
import '../shop/widgets/product/title_and_icon.dart';

class ProductPage extends ConsumerStatefulWidget {
  final int index;

  const ProductPage(this.index, {super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductPageState();
}

class _ProductPageState extends ConsumerState<ProductPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(productProvider.notifier)
          .getCounts(ref.watch(productProvider).products[widget.index].id ?? 0);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(productProvider);
    final event = ref.read(productProvider.notifier);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductImageAndItems(img: state.products[widget.index].img ?? ''),
            24.verticalSpace,
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 24),
              child:
                  TitleAndIcon(title: state.products[widget.index].name ?? ''),
            ),
            34.verticalSpace,
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 24),
              child: ReviewItem(
                  rate: '${state.products[widget.index].rate ?? ''}'),
            ),
            21.verticalSpace,
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 24),
              child: const Divider(color: Style.grey),
            ),
            20.verticalSpace,
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 24),
              child: Text(
                state.products[widget.index].description ?? '',
                style: Style.urbanistSemiBold(size: 16),
              ),
            ),
            20.verticalSpace,
            IncreaseAndDecreaseButton(
              count: state.count,
              onDecrease: () {
                event.decreaseCount(
                  CartlData(
                      totalCount: state.totalPrice,
                      productId: state.products[widget.index].id,
                      count: state.count,
                      product: state.products[widget.index]),
                  widget.index,
                );

                Vibrate.feedback(FeedbackType.selection);
              },
              onIncrease: () {
                event.increaseCount(
                  CartlData(
                      totalCount: state.totalPrice,
                      productId: state.products[widget.index].id,
                      count: state.count,
                      product: state.products[widget.index]),
                  widget.index,
                );
                Vibrate.feedback(FeedbackType.selection);
              },
            ),
            20.verticalSpace,
            Padding(
                padding: REdgeInsets.symmetric(horizontal: 24),
                child: const NoteToStoreTextformField()),
            200.verticalSpace
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: REdgeInsets.symmetric(horizontal: 24),
        child: ConfirmButton(
          onTap: () {
            Vibrate.feedback(FeedbackType.success);
            event.addToCart(widget.index);
            ref.read(cartProvider.notifier).getCarts(state.products);
            event.update();
            Navigator.pop(context);
          },
          title:
              'Add to Cart ${state.totalPrice == 0 ? '' : '- ${state.totalPrice}'}',
        ),
      ),
    );
  }
}
