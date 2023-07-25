import 'package:book_shop/infrastructure/service/app_helper.dart';
import 'package:book_shop/presentation/styles/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropDown extends StatelessWidget {
  final String? value;
  final String hint;
  final List list;
  final ValueChanged onChanged;

  const CustomDropDown(
      {Key? key,
      this.value,
      required this.list,
      required this.onChanged,
      required this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(

      hint: Text(
        hint,
        style: Style.urbanistSemiBold(size: 14, color: Style.greyscale500),
      ),
      value: value,
      items: list.map((e) {
        return DropdownMenuItem(value: e, child: Text(e));
      }).toList(),
      onChanged: onChanged,
      elevation: 6,
      dropdownColor: Style.greyscale200,
      iconEnabledColor: Style.greyscale600,
      borderRadius: BorderRadius.circular(14.r),
      style: Style.urbanistSemiBold(size: 14),
      decoration: AppHelper.inputDecoration(),
    );
  }
}
