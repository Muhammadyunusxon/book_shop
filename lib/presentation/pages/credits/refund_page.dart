import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter/material.dart';

import '../../../infrastructure/service/validators.dart';
import '../../components/components.dart';
import '../../app_route.dart';
import '../../styles/style.dart';

class RefundPage extends StatefulWidget {
  const RefundPage({Key? key}) : super(key: key);

  @override
  State<RefundPage> createState() => _RefundPageState();
}

class _RefundPageState extends State<RefundPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ResponsiveAppBar(
              title: "Get a Refund",
              suffix: IconButton(
                splashRadius: 28.r,
                onPressed: () {},
                icon: Icon(
                  FlutterRemix.search_line,
                  size: 26.r,
                ),
              ),
            ),
            12.verticalSpace,
            Text(
              "Enter the amount of top up",
              style: Style.urbanistMedium(size: 18),
            ),
            Form(
              key: formKey,
              child: Padding(
                padding: REdgeInsets.all(24),
                child: TextFormField(
                  validator: AppValidators.isNotEmptyValidator,
                  style: Style.urbanistSemiBold(size: 44),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding: REdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 24,
                    ),
                    border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Style.primary),
                        borderRadius: BorderRadius.circular(32.r)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Style.primary),
                        borderRadius: BorderRadius.circular(32.r)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Style.primary),
                        borderRadius: BorderRadius.circular(32.r)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: REdgeInsets.symmetric(horizontal: 24),
        child: ConfirmButton(
          onTap: () {
            if (formKey.currentState?.validate() ?? false) {
              AppRoute.goChooseBank(context);
            }
          },
          isLoading: false,
          title: "Continue",
        ),
      ),
    );
  }
}
