import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/style.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final String? Function(String?)? validator;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final VoidCallback? onEditingComplete;
  final VoidCallback? onTap;
  final bool? readOnly;
  final bool isPadding;
  final bool? obscureText;

  const CustomTextField({
    Key? key,
    this.controller,
    this.onChanged,
    this.textInputAction,
    this.textInputType,
    this.validator,
    this.hintText,
    this.prefixIcon,
    this.onEditingComplete,
    this.suffixIcon,
    this.readOnly,
    this.onTap,
    this.isPadding = false, this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: isPadding ? 2 : 1,
      controller: controller,
      readOnly: readOnly ?? false,
      textInputAction: textInputAction,
      keyboardType: textInputType,
      validator: validator,
      obscureText: obscureText ?? false,
      onEditingComplete: onEditingComplete,
      onTap: onTap,
      onChanged: onChanged,
      cursorColor: Style.primary,
      style: Style.urbanistSemiBold(size: 16),
      decoration: InputDecoration(
        contentPadding: isPadding
            ? REdgeInsets.only(top: 20, bottom: 50, left: 20)
            : REdgeInsets.all(14),
        prefixIconConstraints: BoxConstraints(maxHeight: 20.r),
        fillColor: Style.greyscale50,
        filled: true,
        hintText: hintText,
        hintStyle: isPadding
            ? Style.urbanistMedium(
                color: Style.black, size: 14)
            : Style.urbanistRegular(
                color: Style.greyscale500, size: 14),
        prefixIcon: prefixIcon,
        prefixIconColor: Style.greyscale500,
        suffixIconColor: Style.greyscale500,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
