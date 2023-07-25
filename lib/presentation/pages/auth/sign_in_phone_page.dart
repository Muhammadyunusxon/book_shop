// ignore_for_file: use_build_context_synchronously

import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phone_form_field/phone_form_field.dart';
import '../../../../../presentation/app_route.dart';
import '../../../application/auth/auth_provider.dart';
import '../../../infrastructure/local_storage/g_grocery_storage.dart';
import '../../../infrastructure/models/models.dart';
import '../../../infrastructure/service/app_helper.dart';
import '../../components/components.dart';
import '../../styles/style.dart';
import 'widgets/social_button.dart';

class SignInPhonePage extends StatefulWidget {
  const SignInPhonePage({Key? key}) : super(key: key);

  @override
  State<SignInPhonePage> createState() => _SignInPhonePageState();
}

class _SignInPhonePageState extends State<SignInPhonePage> {
  late GlobalKey<FormFieldState<PhoneNumber>> phoneKey;
  late PhoneController phoneController;

  @override
  void initState() {
    phoneKey = GlobalKey<FormFieldState<PhoneNumber>>();
    phoneController = PhoneController(null);
    super.initState();
  }

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: KeyboardDismisser(
          child: Padding(
            padding: REdgeInsets.symmetric(horizontal: 24),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: REdgeInsets.only(left: 60, right: 60),
                    child: Image.asset(Assets.pngGoogle),
                  ),
                  Text(
                    'Welcome to E book shop!',
                    style: Style.urbanistBold(size: 24),
                  ),
                  24.verticalSpace,
                  Text(
                    "Sign In",
                    style: Style.urbanistSemiBold(size: 32),
                  ),
                  16.verticalSpace,
                  PhoneFormField(
                    key: phoneKey,
                    defaultCountry: IsoCode.US,
                    controller: phoneController,
                    validator: PhoneValidator.compose([
                      PhoneValidator.required(errorText: "phone_empty"),
                      PhoneValidator.validMobile(errorText: 'phone_error'),
                    ]),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    decoration: AppHelper.inputDecoration(),
                  ),
                  16.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomCheckbox(isActive: false, onTap: () {}),
                      16.horizontalSpace,
                      Text(
                        "Remember me",
                        style: Style.urbanistSemiBold(size: 16),
                      )
                    ],
                  ),
                  20.verticalSpace,
                  ConfirmButton(
                    onTap: () async {
                      if (phoneKey.currentState?.validate() ?? false) {
                        await LocalStorage.setUser(
                            UserData(phoneNumber: phoneController.value));
                        AppRoute.goVerification(context);
                      }
                    },
                    isLoading: false,
                    title: 'Sign in',
                  ),
                  16.verticalSpace,
                  Row(
                    children: [
                      const Expanded(child: Divider()),
                      Padding(
                        padding: REdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "or continue with",
                          style: Style.urbanistSemiBold(),
                        ),
                      ),
                      const Expanded(child: Divider()),
                    ],
                  ),
                  20.verticalSpace,
                  Consumer(builder: (context, ref, child) {
                    final state = ref.watch(authProvider);
                    final notifier = ref.read(authProvider.notifier);
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SocialButton(
                          onTap: () => notifier.loginFacebook(context),
                          icon: Assets.pngFacebook,
                          isLoading: state.isFacebookLoading,
                        ),
                        16.verticalSpace,
                        SocialButton(
                          onTap: () => notifier.loginGoogle(context),
                          icon: Assets.pngGoogle,
                          isLoading: state.isGoogleLoading,
                        ),
                        16.verticalSpace,
                        SocialButton(
                          onTap: () => notifier.loginApple(context),
                          icon: Assets.pngApple,
                          isLoading: state.isAppleLoading,
                        ),
                      ],
                    );
                  }),
                  16.verticalSpace,
                  TextButton(
                    style: Style.buttonStyle,
                    onPressed: () => AppRoute.goSignUp(context),
                    child: RichText(
                      text: TextSpan(
                          text: "Don’t have an account? ",
                          style: Style.urbanistMedium(size: 14),
                          children: [
                            TextSpan(
                              text: "Sign up",
                              style: Style.urbanistMedium(
                                  size: 14, color: Style.primary),
                            ),
                          ]),
                    ),
                  ),
                  32.verticalSpace,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
