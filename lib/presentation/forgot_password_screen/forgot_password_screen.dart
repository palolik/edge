import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_image.dart';
import 'package:ecommerce_user/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_user/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding:
                              EdgeInsets.only(left: 8.h, top: 8.v, right: 75.h),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomAppBar(
                                    leadingWidth: double.maxFinite,
                                    leading: AppbarImage(
                                        svgPath: ImageConstant.imgArrowleft,
                                        margin: EdgeInsets.only(
                                            left: 8.h, right: 343.h),
                                        onTap: () {
                                          onTapArrowleftone(context);
                                        })),
                                SizedBox(height: 31.v),
                                Text("lbl_forgot_password".tr,
                                    style: theme.textTheme.displaySmall)
                              ])),
                      Container(
                          padding: EdgeInsets.only(
                              left: 15.h, top: 88.v, right: 15.h),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width: 332.h,
                                    margin: EdgeInsets.only(right: 12.h),
                                    child: Text("msg_please_enter_your".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.titleSmall!
                                            .copyWith(height: 1.43))),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 1.h, top: 16.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 20.h,
                                                  vertical: 13.v),
                                              decoration: AppDecoration
                                                  .outlineSecondaryContainer
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder4),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                bottom: 5.v),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "lbl_email"
                                                                      .tr,
                                                                  style: CustomTextStyles
                                                                      .bodySmallSecondaryContainer),
                                                              SizedBox(
                                                                  height: 6.v),
                                                              Text(
                                                                  "lbl_email2"
                                                                      .tr,
                                                                  style: CustomTextStyles
                                                                      .titleSmallOnPrimaryContainer)
                                                            ])),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgOutlineclose24px,
                                                        height: 24.adaptSize,
                                                        width: 24.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            top: 6.v,
                                                            right: 1.h,
                                                            bottom: 5.v))
                                                  ])),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 20.h, top: 4.v),
                                              child: Text(
                                                  "msg_not_a_valid_email".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallSecondaryContainer))
                                        ])),
                                CustomElevatedButton(
                                    text: "lbl_send".tr,
                                    margin: EdgeInsets.only(
                                        left: 1.h, top: 54.v, bottom: 5.v))
                              ]))
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
