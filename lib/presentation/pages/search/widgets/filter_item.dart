import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../application/filter/filter_provider.dart';
import '../../../components/components.dart';
import '../../../styles/style.dart';

class FilterItem extends ConsumerWidget {
  const FilterItem({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final state = ref.watch(filterProvider);
    final notifier = ref.read(filterProvider.notifier);
    return ListView(
      padding: REdgeInsets.symmetric(horizontal: 24),
      children: [
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: state.filters.length,
            itemBuilder: (context, index) {
              return Container(
                padding: REdgeInsets.all(20),
                margin: REdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Style.white,
                  borderRadius: BorderRadius.circular(24.r),
                  boxShadow: Style.boxShadow,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      state.filters[index].title ?? "",
                      style: Style.urbanistSemiBold(size: 20),
                    ),
                    20.verticalSpace,
                    const Divider(),
                    ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.filters[index].data?.length ?? 0,
                        itemBuilder: (context, i) {
                          return Padding(
                            padding: REdgeInsets.only(bottom: 12, top: 4),
                            child: Row(
                              children: [
                                CustomCheckbox(
                                    isActive: state.selectFilters[index] == i,
                                    onTap: () {
                                      notifier.changeFilter(index, i);
                                    }),
                                12.horizontalSpace,
                                Text(
                                  state.filters[index].data?[i] ?? "",
                                  style:
                                      Style.urbanistSemiBold(size: 20),
                                ),
                              ],
                            ),
                          );
                        }),
                  ],
                ),
              );
            }),
        SizedBox(
          height: 58.r,
          child: Row(
            children: [
              Expanded(
                child: ConfirmButton(
                  isActive: false,
                  onTap: () => Navigator.pop(context),
                  title: "Reset",
                ),
              ),
              12.horizontalSpace,
              Expanded(
                child: ConfirmButton(
                  onTap: () => Navigator.pop(context),
                  title: "Apply",
                ),
              ),
            ],
          ),
        ),
        56.verticalSpace,
      ],
    );
  }
}
