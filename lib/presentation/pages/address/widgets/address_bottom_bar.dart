import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../application/address/address_provider.dart';
import '../../../../application/select_address/select_address_provider.dart';
import '../../../components/components.dart';
import '../../../styles/style.dart';

class AddressBottomBar extends ConsumerWidget {
  final VoidCallback onSave;

  const AddressBottomBar(this.onSave, {super.key});

  @override
  Widget build(BuildContext context, ref) {
    final state = ref.watch(selectAddressProvider);
    final event = ref.read(selectAddressProvider.notifier);
    return Column(
      children: [
        Padding(
          padding: REdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () => event.goToMyLocation(),
                child: Container(
                  padding: REdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    color: Style.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    FlutterRemix.map_pin_line,
                    color: Style.black,
                    size: 24.r,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: REdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(36.r),
            ),
            color: Style.greyscale50,
          ),
          child: Column(
            children: [
              8.verticalSpace,
              const ModalDrag(),
              8.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Location",
                    style: Style.urbanistSemiBold(size: 24),
                  ),
                ],
              ),
              12.verticalSpace,
              const Divider(),
              18.verticalSpace,
              Column(
                children: [
                  CustomTextField(
                    controller: state.textController,
                    onChanged: (value) => event.setQuery(context),
                    suffixIcon: IconButton(
                      onPressed: event.clearSearchField,
                      splashRadius: 20.r,
                      padding: REdgeInsets.only(left: 12, right: 12),
                      icon: Icon(
                        FlutterRemix.close_line,
                        size: 20.r,
                        color: Style.black,
                      ),
                    ),
                    prefixIcon: Padding(
                      padding: REdgeInsets.only(left: 12, right: 8),
                      child: Icon(
                        FlutterRemix.search_line,
                        size: 20.r,
                        color: Style.black,
                      ),
                    ),
                  ),
                  if (state.isSearching)
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        color: Style.white,
                      ),
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: state.searchedPlaces.length,
                          padding: REdgeInsets.only(bottom: 22),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                event.goToLocation(
                                    place: state.searchedPlaces[index]);
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  22.verticalSpace,
                                  Text(
                                    state.searchedPlaces[index]
                                            .address?["country"] ??
                                        "",
                                  ),
                                  Text(
                                    state.searchedPlaces[index].displayName,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const Divider(),
                                ],
                              ),
                            );
                          }),
                    ),
                ],
              ),
              18.verticalSpace,
              const Divider(),
              18.verticalSpace,
              ConfirmButton(
                isLoading: state.isLoading,
                title: "Save location",
                onTap: () async {
                  event.saveLocalAddress(() {
                    onSave();
                    ref.read(addressProvider.notifier).getAddress();
                  });
                },
              ),
              36.verticalSpace,
            ],
          ),
        ),
      ],
    );
  }
}
