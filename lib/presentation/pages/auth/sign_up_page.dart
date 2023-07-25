// ignore_for_file: use_build_context_synchronously

import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phone_form_field/phone_form_field.dart';
import '../../../application/auth/auth_provider.dart';
import '../../../infrastructure/local_storage/g_grocery_storage.dart';
import '../../../infrastructure/models/models.dart';
import '../../components/components.dart';
import '../../app_route.dart';
import '../../styles/style.dart';
import 'widgets/sign_up_form.dart';
import 'widgets/social_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late PhoneController phoneController;
  late TextEditingController firstname;
  late TextEditingController lastname;
  late TextEditingController password;
  late GlobalKey<FormState> formKey;
  late GlobalKey<FormFieldState<PhoneNumber>> phoneKey;

  @override
  void initState() {
    formKey = GlobalKey<FormState>();
    phoneKey = GlobalKey<FormFieldState<PhoneNumber>>();
    phoneController = PhoneController(null);
    lastname = TextEditingController();
    firstname = TextEditingController();
    password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    phoneController.dispose();
    lastname.dispose();
    password.dispose();
    firstname.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Style.white,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: REdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: REdgeInsets.symmetric(horizontal: 60),
                  child: const CustomImage(url: Assets.pngApple),
                ),
                16.verticalSpace,
                Text(
                  "Create New Account",
                  style: Style.urbanistSemiBold(size: 32),
                ),
                16.verticalSpace,
                SignUpForm(
                  formKey: formKey,
                  phoneKey: phoneKey,
                  phoneController: phoneController,
                  lastName: lastname,
                  firstName: firstname, password: password,
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
                16.verticalSpace,
                Consumer(builder: (context, ref, child) {
                  final state = ref.watch(authProvider);
                  final notifier = ref.read(authProvider.notifier);
                  return ConfirmButton(
                    onTap: () async {
                      if ((formKey.currentState?.validate() ?? false) &&
                          (phoneKey.currentState?.validate() ?? false)) {
                        await LocalStorage.setUser(UserData(
                          firstName: firstname.text,
                          email: lastname.text,
                          phoneNumber: phoneController.value,
                        ));
                        notifier.signUp(context);
                      }
                    },
                    isLoading: state.isLoading,
                    title: 'Sign up',
                  );
                }),
                12.verticalSpace,
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
                16.verticalSpace,
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
                      SocialButton(
                        onTap: () => notifier.loginGoogle(context),
                        icon: Assets.pngGoogle,
                        isLoading: state.isGoogleLoading,
                      ),
                      SocialButton(
                        onTap: () => notifier.loginApple(context),
                        icon: Assets.pngApple,
                        isLoading: state.isAppleLoading,
                      ),
                    ],
                  );
                }),
                12.verticalSpace,
                TextButton(
                  style: Style.buttonStyle,
                  onPressed: () => AppRoute.goAuth(context),
                  child: RichText(
                    text: TextSpan(
                        text: "Already have an account? ",
                        style: Style.urbanistMedium(size: 14),
                        children: [
                          TextSpan(
                            text: "Sign in",
                            style: Style.urbanistMedium(
                                size: 14, color: Style.primary),
                          ),
                        ]),
                  ),
                ),
                24.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
