import 'package:book_shop/application/auth/auth_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:flutter/material.dart';
import '../../../../infrastructure/service/app_helper.dart';
import '../../../../infrastructure/service/validators.dart';
import '../../../components/components.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
    required this.formKey,
    required this.phoneKey,
    required this.phoneController,
    required this.lastName,
    required this.firstName,
    required this.password,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final GlobalKey<FormFieldState<PhoneNumber>> phoneKey;
  final PhoneController phoneController;
  final TextEditingController lastName;
  final TextEditingController firstName;
  final TextEditingController password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextField(
            controller: firstName,
            textInputType: TextInputType.text,
            hintText: "First Name",
            prefixIcon: Padding(
              padding: REdgeInsets.only(left: 12, right: 8),
              child: Icon(
                Icons.person,
                size: 24.r,
              ),
            ),
            validator: AppValidators.isNotEmptyValidator,
          ),
          16.verticalSpace,
          CustomTextField(
            controller: firstName,
            textInputType: TextInputType.text,
            hintText: "Last name",
            prefixIcon: Padding(
              padding: REdgeInsets.only(left: 12, right: 8),
              child: Icon(
                Icons.person,
                size: 24.r,
              ),
            ),
            validator: AppValidators.isNotEmptyValidator,
          ),
          16.verticalSpace,
          PhoneFormField(
            key: phoneKey,
            defaultCountry: IsoCode.US,
            controller: phoneController,
            validator: PhoneValidator.compose([
              PhoneValidator.required(errorText: "Phone number empty"),
              PhoneValidator.validMobile(errorText: 'Phone number incorrect'),
            ]),
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.phone,
            decoration: AppHelper.inputDecoration(),
          ),
          16.verticalSpace,
          Consumer(builder: (context, ref, child) {
            final state = ref.watch(authProvider);
            return CustomTextField(
              controller: password,
              obscureText: state.showPassword,
              textInputType: TextInputType.text,
              hintText: "Password",
              prefixIcon: Padding(
                padding: REdgeInsets.only(left: 12, right: 8),
                child: Icon(
                  Icons.lock,
                  size: 24.r,
                ),
              ),
              suffixIcon: IconButton(
                splashRadius: 26.r,
                icon: Icon(
                  state.showPassword ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: ref.read(authProvider.notifier).showPassword,
              ),
              validator: AppValidators.isValidPassword,
            );
          }),
        ],
      ),
    );
  }
}
