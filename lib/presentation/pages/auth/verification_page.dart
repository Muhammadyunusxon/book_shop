import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

import '../../../infrastructure/local_storage/g_grocery_storage.dart';
import '../../../infrastructure/service/app_constants.dart';
import '../../components/components.dart';
import '../../app_route.dart';
import '../../styles/style.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    SmsAutoFill().unregisterListener();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.white,
      body: SafeArea(
        child: Padding(
          padding:  REdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              8.verticalSpace,
              const ResponsiveAppBar(
                title: "OTP Code Verification",
                paddingHorizontal: 0,
              ),
              86.verticalSpace,
              Text(
                "Code has been send to +${LocalStorage.getUser()?.phoneNumber?.countryCode} ${LocalStorage.getUser()?.phoneNumber?.getFormattedNsn()}",
                style: Style.urbanistMedium(size: 16),
              ),
              24.verticalSpace,
              Text(
                "Code: ${AppConstants.signInPassword}",
                style: Style.urbanistMedium(size: 18),
              ),
              60.verticalSpace,
              PinFieldAutoFill(
                controller: controller,
                codeLength: 4,
                cursor: Cursor(
                    color: Style.greyscale200,
                    enabled: true,
                    width: 2),
                decoration: BoxLooseDecoration(
                  textStyle: Style.urbanistSemiBold(),
                  gapSpace: 16.r,
                  radius: Radius.circular(16.r),
                  bgColorBuilder:
                      const FixedColorBuilder(Style.greyscale50),
                  strokeColorBuilder:
                      const FixedColorBuilder(Style.greyscale200),
                ),
                onCodeSubmitted: (s) {
                  if (AppConstants.signInPassword == s) {
                    AppRoute.goFillProfile(context);
                  }
                },
                onCodeChanged: (s) {
                  if (AppConstants.signInPassword == s) {
                    AppRoute.goFillProfile(context);
                  }
                },
                currentCode: "",
              ),
              60.verticalSpace,
              RichText(
                text: TextSpan(
                  text: "Resend code in ",
                  style: Style.urbanistMedium(
                      color: Style.greyscale900),
                  children: [
                    TextSpan(
                      text: "55",
                      style: Style.urbanistMedium(
                          color: Style.primary),
                    ),
                    TextSpan(
                      text: " s",
                      style: Style.urbanistMedium(
                          color: Style.greyscale900),
                    )
                  ],
                ),
              ),
              const Spacer(),
              ConfirmButton(
                onTap: () {},
                isLoading: false,
                title: 'Verify',
              ),
              32.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
