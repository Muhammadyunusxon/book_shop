// ignore_for_file: use_build_context_synchronously
import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../../../application/credit/credit_provider.dart';
import '../../../infrastructure/models/models.dart';
import '../../../infrastructure/service/validators.dart';
import '../../components/components.dart';
import '../../app_route.dart';

class AddBankPage extends StatefulWidget {
  const AddBankPage({Key? key}) : super(key: key);

  @override
  State<AddBankPage> createState() => _AddBankPageState();
}

class _AddBankPageState extends State<AddBankPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late TextEditingController name;
  late TextEditingController bankName;
  late TextEditingController displayName;

  @override
  void initState() {
    name = TextEditingController();
    bankName = TextEditingController();
    displayName = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    name.dispose();
    bankName.dispose();
    displayName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ResponsiveAppBar(
              title: "Enter Bank Details",
              suffix: IconButton(
                splashRadius: 28.r,
                onPressed: () {},
                icon: SvgPicture.asset(
                  Assets.svgScan,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: REdgeInsets.symmetric(horizontal: 24, vertical: 18),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      24.verticalSpace,
                      CustomTextField(
                        controller: name,
                        textInputAction: TextInputAction.next,
                        hintText: "Enter Account Name",
                        validator: AppValidators.isNotEmptyValidator,
                      ),
                      24.verticalSpace,
                      CustomTextField(
                        controller: bankName,
                        textInputAction: TextInputAction.next,
                        hintText: "Enter Bank Name",
                        validator: AppValidators.isNotEmptyValidator,
                      ),
                      24.verticalSpace,
                      CustomTextField(
                        controller: displayName,
                        textInputAction: TextInputAction.next,
                        hintText: "How do you want this account displayed?",
                        validator: AppValidators.isNotEmptyValidator,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: REdgeInsets.symmetric(horizontal: 24),
        child: Consumer(builder: (context, ref, child) {
          return ConfirmButton(
            onTap: () async {
              if (formKey.currentState?.validate() ?? false) {
                ref.read(creditProvider.notifier).addBank(BankData(
                    name: name.text,
                    bankName: bankName.text,
                    displayName: displayName.text));
                AppRoute.goPinCodePage(context);
              }
            },
            isLoading: false,
            title: "Update",
          );
        }),
      ),
    );
  }
}
