import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:book_shop/presentation/app_assets.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../../components/components.dart';
import '../../styles/style.dart';

class AddPinCodePage extends StatefulWidget {
  const AddPinCodePage({Key? key}) : super(key: key);

  @override
  State<AddPinCodePage> createState() => _AddPinCodePageState();
}

class _AddPinCodePageState extends State<AddPinCodePage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: Scaffold(
        body: SafeArea(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                ResponsiveAppBar(
                  title: "Enter Your PIN",
                  suffix: IconButton(
                    splashRadius: 28.r,
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      Assets.svgScan,
                    ),
                  ),
                ),
                128.verticalSpace,
                Text(
                  "Enter your PIN to confirm withdraw",
                  style: Style.urbanistMedium(size: 18),
                ),
                60.verticalSpace,
                Padding(
                  padding: REdgeInsets.symmetric(horizontal: 24),
                  child: PinFieldAutoFill(
                    codeLength: 4,
                    cursor: Cursor(
                        color: Style.primary, enabled: true, width: 2),
                    decoration: BoxLooseDecoration(
                      textStyle: Style.urbanistSemiBold(),
                      gapSpace: 16.r,
                      radius: Radius.circular(16.r),
                      bgColorBuilder:
                          const FixedColorBuilder(Style.greyscale50),
                      strokeColorBuilder:
                          const FixedColorBuilder(Style.greyscale200),
                    ),
                    currentCode: "",
                    onCodeChanged: (s) {},
                    onCodeSubmitted: (s) {},
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: REdgeInsets.symmetric(horizontal: 24),
          child: ConfirmButton(
              onTap: () {
                if (formKey.currentState?.validate() ?? false) {
                  Navigator.pop(context);
                  Navigator.pop(context);
                }
              },
              isLoading: false,
              title: "Continue"),
        ),
      ),
    );
  }
}
