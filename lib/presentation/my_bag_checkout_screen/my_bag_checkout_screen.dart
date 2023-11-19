import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_image.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_subtitle.dart';
import 'package:ecommerce_user/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_user/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class MyBagCheckoutScreen extends StatelessWidget {
  const MyBagCheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 8.v),
                      decoration: AppDecoration.outlineBlack,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 4.v),
                            CustomAppBar(
                                leadingWidth: 32.h,
                                leading: AppbarImage(
                                    svgPath: ImageConstant.imgArrowleft,
                                    margin: EdgeInsets.only(left: 8.h),
                                    onTap: () {
                                      onTapArrowleftone(context);
                                    }),
                                centerTitle: true,
                                title: AppbarSubtitle(text: "lbl_checkout2".tr))
                          ])),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.h, vertical: 25.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 6.v),
                            Text("msg_shipping_address".tr,
                                style: theme.textTheme.titleMedium),
                            SizedBox(height: 20.v),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 23.h, vertical: 20.v),
                                decoration: AppDecoration.outlineBlack900
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(left: 5.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 1.v),
                                                    child: Text(
                                                        "lbl_jane_doe".tr,
                                                        style: theme.textTheme
                                                            .titleSmall)),
                                                Text("lbl_change".tr,
                                                    style: CustomTextStyles
                                                        .titleSmallPrimary)
                                              ])),
                                      Container(
                                          width: 235.h,
                                          margin: EdgeInsets.fromLTRB(
                                              5.h, 11.v, 57.h, 2.v),
                                          child: Text(
                                              "msg_3_newbridge_court".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: theme.textTheme.bodyMedium!
                                                  .copyWith(height: 1.50)))
                                    ])),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 57.v, right: 23.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("lbl_payment".tr,
                                          style: theme.textTheme.titleMedium),
                                      Text("lbl_change".tr,
                                          style: CustomTextStyles
                                              .titleSmallPrimary)
                                    ])),
                            SizedBox(height: 16.v),
                            Row(children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgMastercard,
                                  height: 25.v,
                                  width: 32.h),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 17.h, top: 13.v, bottom: 10.v),
                                  child: Text("msg_3947".tr,
                                      style: theme.textTheme.bodyMedium))
                            ]),
                            SizedBox(height: 51.v),
                            Text("lbl_delivery_method".tr,
                                style: theme.textTheme.titleMedium),
                            SizedBox(height: 20.v),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: Container(
                                          margin: EdgeInsets.only(right: 11.h),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 19.h, vertical: 15.v),
                                          decoration: AppDecoration
                                              .outlineBlack900
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder8),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgLayer1,
                                                    height: 17.v,
                                                    width: 61.h),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 11.v, right: 5.h),
                                                    child: Text(
                                                        "lbl_2_3_days".tr,
                                                        style: CustomTextStyles
                                                            .bodySmall11))
                                              ]))),
                                  Expanded(
                                      child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 11.h),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 9.h, vertical: 15.v),
                                          decoration: AppDecoration
                                              .outlineBlack900
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder8),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                SizedBox(height: 8.v),
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgCar,
                                                    height: 10.v,
                                                    width: 82.h),
                                                SizedBox(height: 11.v),
                                                Text("lbl_2_3_days".tr,
                                                    style: CustomTextStyles
                                                        .bodySmall11)
                                              ]))),
                                  Expanded(
                                      child: Container(
                                          margin: EdgeInsets.only(left: 11.h),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 14.h, vertical: 15.v),
                                          decoration: AppDecoration
                                              .outlineBlack900
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder8),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SizedBox(height: 2.v),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgTelevision,
                                                    height: 16.v,
                                                    width: 71.h),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 11.v, right: 11.h),
                                                    child: Text(
                                                        "lbl_2_3_days".tr,
                                                        style: CustomTextStyles
                                                            .bodySmall11))
                                              ])))
                                ]),
                            Padding(
                                padding: EdgeInsets.only(top: 52.v, right: 3.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 1.v),
                                          child: Text("lbl_order".tr,
                                              style: CustomTextStyles
                                                  .titleSmallGray500)),
                                      Text("lbl_112".tr,
                                          style: theme.textTheme.titleMedium)
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(top: 18.v, right: 3.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 2.v),
                                          child: Text("lbl_delivery".tr,
                                              style: CustomTextStyles
                                                  .titleSmallGray500)),
                                      Text("lbl_15".tr,
                                          style: theme.textTheme.titleMedium)
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(top: 17.v, right: 4.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 3.v),
                                          child: Text("lbl_summary".tr,
                                              style: CustomTextStyles
                                                  .titleMediumGray500)),
                                      Text("lbl_127".tr,
                                          style:
                                              CustomTextStyles.titleMedium18_1)
                                    ]))
                          ]))
                ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_submit_order".tr,
                margin:
                    EdgeInsets.only(left: 16.h, right: 16.h, bottom: 47.v))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
