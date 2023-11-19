import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/custom_elevated_button.dart';
import 'package:ecommerce_user/widgets/custom_floating_text_field.dart';
import 'package:ecommerce_user/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpPageScreen extends StatelessWidget {
  SignUpPageScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Container(
            child: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.all(8.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowleft,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    onTap: () {
                                      onTapImgArrowleftone(context);
                                    }),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 6.h, top: 30.v),
                                    child: Text("lbl_sign_up".tr,
                                        style: theme.textTheme.displaySmall))
                              ]),
                          CustomFloatingTextField(
                              margin: EdgeInsets.only(
                                  left: 8.h, top: 73.v, right: 8.h),
                              controller: nameController,
                              labelText: "lbl_name".tr,
                              labelStyle:
                                  CustomTextStyles.titleSmallOnPrimaryContainer,
                              hintText: "lbl_name".tr,
                              hintStyle:
                                  CustomTextStyles.titleSmallOnPrimaryContainer,
                              suffix: Container(
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 21.h),
                                  child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgOutlinecheck24px)),
                              suffixConstraints:
                                  BoxConstraints(maxHeight: 64.v)),
                          CustomFloatingTextField(
                              margin: EdgeInsets.only(
                                  left: 8.h, top: 8.v, right: 8.h),
                              controller: emailController,
                              labelText: "lbl_email".tr,
                              labelStyle:
                                  CustomTextStyles.titleSmallOnPrimaryContainer,
                              hintText: "lbl_email".tr,
                              hintStyle:
                                  CustomTextStyles.titleSmallOnPrimaryContainer,
                              textInputType: TextInputType.emailAddress),
                          CustomFloatingTextField(
                              margin: EdgeInsets.only(
                                  left: 8.h, top: 8.v, right: 8.h),
                              controller: passwordController,
                              labelText: "lbl_password".tr,
                              labelStyle: CustomTextStyles.titleSmallGray500,
                              hintText: "lbl_password".tr,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              obscureText: true,
                              contentPadding:
                                  EdgeInsets.fromLTRB(20.h, 24.v, 20.h, 25.v)),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(top: 14.v, right: 8.h),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 5.v, bottom: 4.v),
                                            child: Text(
                                                "msg_already_have_an".tr,
                                                style: theme
                                                    .textTheme.titleSmall)),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgRoundarrowrightalt24px,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                            margin: EdgeInsets.only(left: 4.h))
                                      ]))),
                          CustomElevatedButton(
                            text: "lbl_sign_up2".tr,
                            margin: EdgeInsets.only(
                                left: 8.h, top: 26.v, right: 8.h),
                          ),
                          Spacer(),
                          SizedBox(height: 6.v),
                          Align(
                              alignment: Alignment.center,
                              child: Text("msg_or_sign_up_with".tr,
                                  style: theme.textTheme.titleSmall))
                        ]))),
          ),
        ),
        bottomNavigationBar: Padding(
            padding: EdgeInsets.only(left: 87.h, right: 87.h, bottom: 57.v),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomIconButton(
                  height: 64.v,
                  width: 92.h,
                  padding: EdgeInsets.all(20.h),
                  decoration: IconButtonStyleHelper.outlineBlack,
                  child: CustomImageView(svgPath: ImageConstant.imgGoogle)),
              CustomImageView(
                  svgPath: ImageConstant.imgFacebook,
                  height: 24.adaptSize,
                  width: 24.adaptSize)
            ])));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
