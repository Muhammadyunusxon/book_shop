import 'package:book_shop/application/profile/profile_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../../infrastructure/local_storage/g_grocery_storage.dart';
import '../../../infrastructure/service/app_helper.dart';
import '../../../infrastructure/service/validators.dart';
import '../../components/components.dart';
import '../../app_route.dart';
import '../../styles/style.dart';
import 'widgets/avatar.dart';
import 'widgets/edit_button.dart';

class FillProfilePage extends ConsumerStatefulWidget {
  final bool isUpdate;

  const FillProfilePage({Key? key, this.isUpdate = false}) : super(key: key);

  @override
  ConsumerState<FillProfilePage> createState() => _FillProfilePageState();
}

class _FillProfilePageState extends ConsumerState<FillProfilePage> {
  late PhoneController phone;
  late TextEditingController firstName;
  late TextEditingController lastName;
  late TextEditingController dateOfBirth;
  late TextEditingController email;
  late GlobalKey<FormState> formKey;
  late GlobalKey<FormFieldState<PhoneNumber>> phoneKey;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(profileProvider.notifier).initial();
    });
    final user = LocalStorage.getUser();
    formKey = GlobalKey<FormState>();
    phoneKey = GlobalKey<FormFieldState<PhoneNumber>>();
    phone = PhoneController(user?.phoneNumber);
    lastName = TextEditingController(text: user?.lastName);
    firstName = TextEditingController(text: user?.firstName);
    email = TextEditingController(text: user?.email);
    dateOfBirth = TextEditingController(text: user?.dateOfBirth);
    super.initState();
  }

  @override
  void dispose() {
    phone.dispose();
    lastName.dispose();
    firstName.dispose();
    email.dispose();
    dateOfBirth.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(profileProvider.notifier);
    final state = ref.watch(profileProvider);
    return Scaffold(
      backgroundColor: Style.white,
      body: SafeArea(
        bottom: false,
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ResponsiveAppBar(
                  title: widget.isUpdate ? "Profile" : "Fill Your Profile"),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  padding: REdgeInsets.symmetric(horizontal: 24),
                  children: [
                    32.verticalSpace,
                    Center(
                      child: Stack(
                        children: [
                          Avatar(src: state.image),
                          Positioned(
                              bottom: -5,
                              right: -2,
                              child: EditButton(
                                onTap: () => notifier.getImageGallery(),
                              ))
                        ],
                      ),
                    ),
                    24.verticalSpace,
                    CustomTextField(
                      controller: firstName,
                      hintText: "First Name",
                      textInputType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      validator: AppValidators.isNotEmptyValidator,
                    ),
                    24.verticalSpace,
                    CustomTextField(
                      controller: lastName,
                      hintText: "Last Name",
                      textInputType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      validator: AppValidators.isNotEmptyValidator,
                    ),
                    24.verticalSpace,
                    CustomTextField(
                      controller: dateOfBirth,
                      onTap: () {
                        AppHelper.showCustomModalBottomSheet(
                          paddingTop: MediaQuery.of(context).padding.top,
                          context: context,
                          radius: 12,
                          modal: CustomDatePickerModal(
                            onDateSaved: (date) {
                              if (date != null) {
                                dateOfBirth.text =
                                    DateFormat("dd/MM/yyyy").format(date);
                              }
                            },
                          ),
                        );
                      },
                      readOnly: true,
                      hintText: "Date of Birth (optional)",
                      textInputAction: TextInputAction.next,
                      suffixIcon: Padding(
                        padding: REdgeInsets.only(
                            left: 12, right: 8, top: 14, bottom: 14),
                        child: SvgPicture.asset(
                          Assets.svgDateTime,
                          height: 8.r,
                        ),
                      ),
                    ),
                    24.verticalSpace,
                    CustomTextField(
                      controller: email,
                      hintText: "Email",
                      textInputType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      suffixIcon: Padding(
                        padding: REdgeInsets.only(
                            left: 12, right: 8, top: 14, bottom: 14),
                        child: SvgPicture.asset(
                          Assets.svgEmail,
                          height: 8.r,
                        ),
                      ),
                      validator: AppValidators.isValidEmail,
                    ),
                    24.verticalSpace,
                    PhoneFormField(
                      key: phoneKey,
                      defaultCountry: IsoCode.US,
                      controller: phone,
                      validator: PhoneValidator.compose([
                        PhoneValidator.required(
                            errorText: "Phone number empty"),
                        PhoneValidator.validMobile(
                            errorText: 'Phone number incorrect'),
                      ]),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      decoration: AppHelper.inputDecoration(),
                    ),
                    24.verticalSpace,
                    CustomDropDown(
                      list: const ["Male", "Female"],
                      onChanged: notifier.setGender,
                      hint: 'Gender  (optional)',
                      value: LocalStorage.getUser()?.gender,
                    ),
                    48.verticalSpace,
                    // PopButton(heroTag: "heroTag"),
                    ConfirmButton(
                        onTap: () {
                          if (formKey.currentState?.validate() ?? false) {
                            notifier.saveProfile(
                              firstName: firstName.text,
                              lastName: lastName.text,
                              email: email.text,
                              phoneNumber: phone.value,
                              onSuccess: () {
                                if (widget.isUpdate) {
                                  Navigator.pop(context);
                                } else {
                                  AppRoute.goAddAddress(context);
                                }
                              },
                            );
                          }
                        },
                        isLoading: false,
                        title: widget.isUpdate ? "Update" : "Continue"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
