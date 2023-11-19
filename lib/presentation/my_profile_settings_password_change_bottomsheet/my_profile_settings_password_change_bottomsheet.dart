import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/custom_elevated_button.dart';
import 'package:ecommerce_user/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MyProfileSettingsPasswordChangeBottomsheet extends StatelessWidget {
  MyProfileSettingsPasswordChangeBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController passwordController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController newpasswordController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.background.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL34,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 60.h,
            child: Divider(
              color: appTheme.gray500,
            ),
          ),
          SizedBox(height: 18.v),
          Align(
            alignment: Alignment.center,
            child: Text(
              "lbl_password_change".tr,
              style: CustomTextStyles.titleMedium18_1,
            ),
          ),
          CustomTextFormField(
            controller: passwordController,
            margin: EdgeInsets.only(
              left: 1.h,
              top: 19.v,
            ),
            hintText: "lbl_old_password".tr,
            textInputType: TextInputType.visiblePassword,
            obscureText: true,
          ),
          SizedBox(height: 17.v),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "msg_forgot_password".tr,
              style: CustomTextStyles.titleSmallGray500,
            ),
          ),
          CustomTextFormField(
            controller: newpasswordController,
            margin: EdgeInsets.only(
              left: 1.h,
              top: 20.v,
            ),
            hintText: "lbl_new_password".tr,
            textInputType: TextInputType.visiblePassword,
            obscureText: true,
          ),
          CustomTextFormField(
            controller: newpasswordController1,
            margin: EdgeInsets.only(
              left: 1.h,
              top: 24.v,
            ),
            hintText: "msg_repeat_new_password".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: true,
          ),
          CustomElevatedButton(
            text: "lbl_save_password".tr,
            margin: EdgeInsets.only(
              left: 1.h,
              top: 32.v,
              bottom: 34.v,
            ),
          ),
        ],
      ),
    );
  }
}
