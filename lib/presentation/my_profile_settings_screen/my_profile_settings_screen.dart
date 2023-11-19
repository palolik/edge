import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_image.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_image_1.dart';
import 'package:ecommerce_user/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_user/widgets/custom_switch.dart';
import 'package:ecommerce_user/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MyProfileSettingsScreen extends StatelessWidget {
  MyProfileSettingsScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: 40.v,
                leadingWidth: 33.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 9.h, top: 8.v, bottom: 8.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgBaselinesearch24pxGray900,
                      margin:
                          EdgeInsets.symmetric(horizontal: 11.h, vertical: 8.v))
                ]),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 14.h, vertical: 22.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_settings".tr,
                              style: theme.textTheme.displaySmall),
                          Padding(
                              padding: EdgeInsets.only(left: 2.h, top: 22.v),
                              child: Text("msg_personal_information".tr,
                                  style: theme.textTheme.titleMedium)),
                          CustomTextFormField(
                              controller: fullNameController,
                              margin: EdgeInsets.only(left: 2.h, top: 21.v),
                              hintText: "lbl_full_name".tr),
                          Container(
                              width: 343.h,
                              margin: EdgeInsets.only(
                                  left: 2.h, top: 24.v, right: 2.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.h, vertical: 13.v),
                              decoration: AppDecoration.outlineBlack9005
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder4),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("lbl_date_of_birth".tr,
                                        style: CustomTextStyles.bodySmall11),
                                    SizedBox(height: 7.v),
                                    Text("lbl_12_12_1989".tr,
                                        style: theme.textTheme.bodyMedium),
                                    SizedBox(height: 4.v)
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 2.h, top: 54.v, right: 2.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("lbl_password".tr,
                                        style: theme.textTheme.titleMedium),
                                    Padding(
                                        padding: EdgeInsets.only(top: 2.v),
                                        child: Text("lbl_change".tr,
                                            style: CustomTextStyles
                                                .titleSmallGray500))
                                  ])),
                          CustomTextFormField(
                              controller: passwordController,
                              margin: EdgeInsets.only(left: 2.h, top: 20.v),
                              hintText: "msg4".tr,
                              hintStyle: theme.textTheme.bodyMedium!,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              obscureText: true,
                              contentPadding: EdgeInsets.all(20.h)),
                          Padding(
                              padding: EdgeInsets.only(left: 2.h, top: 54.v),
                              child: Text("lbl_notifications".tr,
                                  style: theme.textTheme.titleMedium)),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 2.h, top: 23.v, right: 2.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 2.v, bottom: 3.v),
                                        child: Text("lbl_sales".tr,
                                            style: theme.textTheme.titleSmall)),
                                    CustomSwitch(
                                        value: isSelectedSwitch,
                                        onChange: (value) {
                                          isSelectedSwitch = value;
                                        })
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 2.h, top: 24.v, right: 2.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 2.v, bottom: 3.v),
                                        child: Text("lbl_new_arrivals".tr,
                                            style: theme.textTheme.titleSmall)),
                                    CustomSwitch(
                                        value: isSelectedSwitch1,
                                        onChange: (value) {
                                          isSelectedSwitch1 = value;
                                        })
                                  ])),
                          Padding(
                              padding: EdgeInsets.fromLTRB(2.h, 24.v, 2.h, 5.v),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 3.v, bottom: 2.v),
                                        child: Text("msg_delivery_status".tr,
                                            style: theme.textTheme.titleSmall)),
                                    CustomSwitch(
                                        value: isSelectedSwitch2,
                                        onChange: (value) {
                                          isSelectedSwitch2 = value;
                                        })
                                  ]))
                        ])))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
