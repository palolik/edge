import '../my_profile_my_orders_order_details_page/widgets/productdetails_item_widget.dart';
import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_image_1.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_subtitle.dart';
import 'package:ecommerce_user/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_user/widgets/custom_elevated_button.dart';
import 'package:ecommerce_user/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class MyProfileMyOrdersOrderDetailsPage extends StatelessWidget {
  const MyProfileMyOrdersOrderDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.background,
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
                                leadingWidth: 33.h,
                                leading: Container(
                                    height: 24.v,
                                    width: 25.h,
                                    margin: EdgeInsets.only(left: 8.h),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowleft,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize,
                                              alignment: Alignment.centerLeft,
                                              margin:
                                                  EdgeInsets.only(right: 1.h),
                                              onTap: () {
                                                onTapImgArrowleftone(context);
                                              }),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowleft,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize,
                                              alignment: Alignment.center,
                                              margin:
                                                  EdgeInsets.only(left: 1.h),
                                              onTap: () {
                                                onTapImgArrowleftthree(context);
                                              })
                                        ])),
                                centerTitle: true,
                                title: AppbarSubtitle(
                                    text: "lbl_order_details".tr),
                                actions: [
                                  AppbarImage1(
                                      svgPath: ImageConstant
                                          .imgBaselinesearch24pxGray900,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 11.h))
                                ])
                          ])),
                  SizedBox(height: 30.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15.h, right: 15.h, bottom: 5.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lbl_order_1947034".tr,
                                              style:
                                                  theme.textTheme.titleMedium),
                                          Text("lbl_05_12_2019".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumGray500_1)
                                        ]),
                                    SizedBox(height: 17.v),
                                    Row(children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 1.v),
                                          child: Text("msg_tracking_number".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumGray500_1)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 8.h),
                                          child: Text("lbl_iw3475453455".tr,
                                              style:
                                                  theme.textTheme.titleSmall)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 49.h, top: 1.v),
                                          child: Text("lbl_delivered".tr,
                                              style: CustomTextStyles
                                                  .titleSmallGreen600))
                                    ]),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 1.h, top: 20.v),
                                        child: Text("lbl_3_items".tr,
                                            style: theme.textTheme.titleSmall)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 1.h, top: 21.v),
                                        child: ListView.separated(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(height: 24.v);
                                            },
                                            itemCount: 3,
                                            itemBuilder: (context, index) {
                                              return ProductdetailsItemWidget();
                                            })),
                                    SizedBox(height: 36.v),
                                    Text("msg_order_information".tr,
                                        style: theme.textTheme.titleSmall),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 1.h, top: 20.v),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 2.v, bottom: 21.v),
                                                  child: Text(
                                                      "msg_shipping_address2"
                                                          .tr,
                                                      style: CustomTextStyles
                                                          .bodyMediumGray500_1)),
                                              Container(
                                                  width: 210.h,
                                                  margin: EdgeInsets.only(
                                                      left: 10.h),
                                                  child: Text(
                                                      "msg_3_newbridge_court3"
                                                          .tr,
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: theme
                                                          .textTheme.titleSmall!
                                                          .copyWith(
                                                              height: 1.43)))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 1.h, top: 25.v, right: 49.h),
                                        child: Row(children: [
                                          Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 5.v),
                                              child: Text(
                                                  "lbl_payment_method".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumGray500_1)),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgMastercard,
                                              height: 25.v,
                                              width: 32.h,
                                              margin:
                                                  EdgeInsets.only(left: 12.h)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15.h,
                                                  top: 4.v,
                                                  bottom: 5.v),
                                              child: Text("msg_3947".tr,
                                                  style: theme
                                                      .textTheme.titleSmall))
                                        ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 1.h, top: 26.v, right: 86.h),
                                        child: Row(children: [
                                          Text("msg_delivery_method".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumGray500_1),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 17.h),
                                              child: Text(
                                                  "msg_fedex_3_days_15".tr,
                                                  style: theme
                                                      .textTheme.titleSmall))
                                        ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 1.h, top: 28.v, right: 32.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 1.v),
                                                  child: Text("lbl_discount".tr,
                                                      style: CustomTextStyles
                                                          .bodyMediumGray500_1)),
                                              Text("msg_10_personal_promo".tr,
                                                  style: theme
                                                      .textTheme.titleSmall)
                                            ])),
                                    SizedBox(height: 28.v),
                                    Row(children: [
                                      Text("lbl_total_amount2".tr,
                                          style: CustomTextStyles
                                              .bodyMediumGray500_1),
                                      Padding(
                                          padding: EdgeInsets.only(left: 36.h),
                                          child: Text("lbl_133".tr,
                                              style:
                                                  theme.textTheme.titleSmall))
                                    ]),
                                    SizedBox(height: 37.v),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: CustomOutlinedButton(
                                                  height: 36.v,
                                                  text: "lbl_reorder".tr,
                                                  margin: EdgeInsets.only(
                                                      right: 12.h),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .outlineGray)),
                                          Expanded(
                                              child: CustomElevatedButton(
                                                  height: 36.v,
                                                  text: "lbl_leave_feedback".tr,
                                                  margin: EdgeInsets.only(
                                                      left: 12.h),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .outlineRedFTL18))
                                        ])
                                  ]))))
                ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleftthree(BuildContext context) {
    Navigator.pop(context);
  }
}
