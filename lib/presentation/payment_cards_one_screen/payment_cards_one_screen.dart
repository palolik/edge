import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_image.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_subtitle.dart';
import 'package:ecommerce_user/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_user/widgets/custom_checkbox_button.dart';
import 'package:ecommerce_user/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PaymentCardsOneScreen extends StatelessWidget {
  PaymentCardsOneScreen({Key? key}) : super(key: key);

  bool paymentMethodNa = false;

  bool paymentmethodna = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                                    title: AppbarSubtitle(
                                        text: "lbl_payment_methods".tr))
                              ])),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h, top: 31.v),
                          child: Text("msg_your_payment_cards".tr,
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 28.v),
                      Align(
                          alignment: Alignment.center,
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              color: appTheme.gray900,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Container(
                                  height: 216.v,
                                  width: 343.h,
                                  decoration: AppDecoration.outlineBlack9007
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8),
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 24.h,
                                                    vertical: 26.v),
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            ImageConstant
                                                                .imgGroup107),
                                                        fit: BoxFit.cover)),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      SizedBox(height: 23.v),
                                                      Row(children: [
                                                        Opacity(
                                                            opacity: 0.8,
                                                            child: Text(
                                                                "msg_card_holder_name"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .labelMediumOnPrimary)),
                                                        Opacity(
                                                            opacity: 0.8,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 70
                                                                            .h),
                                                                child: Text(
                                                                    "lbl_expiry_date"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .labelMediumOnPrimary)))
                                                      ]),
                                                      SizedBox(height: 6.v),
                                                      Row(children: [
                                                        Text(
                                                            "lbl_jennyfer_doe"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .titleSmallOnPrimary),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 67.h),
                                                            child: Text(
                                                                "lbl_05_23".tr,
                                                                style: CustomTextStyles
                                                                    .titleSmallOnPrimary))
                                                      ])
                                                    ]))),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgEllipse,
                                            height: 150.v,
                                            width: 153.h,
                                            alignment: Alignment.topRight),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgMastercardYellow800,
                                            height: 25.v,
                                            width: 32.h,
                                            radius: BorderRadius.circular(8.h),
                                            alignment: Alignment.bottomRight,
                                            margin: EdgeInsets.only(
                                                right: 24.h, bottom: 32.v)),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgGlobe,
                                            height: 24.v,
                                            width: 32.h,
                                            radius: BorderRadius.circular(8.h),
                                            alignment: Alignment.topLeft,
                                            margin: EdgeInsets.only(
                                                left: 24.h, top: 34.v)),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 24.h, top: 84.v),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: "msg2".tr,
                                                          style: CustomTextStyles
                                                              .headlineSmall_1),
                                                      TextSpan(
                                                          text: "lbl_3947".tr,
                                                          style: CustomTextStyles
                                                              .headlineSmallRegular)
                                                    ]),
                                                    textAlign: TextAlign.left)))
                                      ])))),
                      CustomCheckboxButton(
                          text: "msg_use_as_default_payment".tr,
                          value: paymentMethodNa,
                          margin: EdgeInsets.only(left: 16.h, top: 26.v),
                          padding: EdgeInsets.symmetric(vertical: 2.v),
                          onChange: (value) {
                            paymentMethodNa = value;
                          }),
                      SizedBox(height: 39.v),
                      Align(
                          alignment: Alignment.center,
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              color: appTheme.gray500,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Container(
                                  height: 216.v,
                                  width: 343.h,
                                  decoration: AppDecoration.outlineBlack9008
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8),
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 24.h,
                                                    vertical: 4.v),
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            ImageConstant
                                                                .imgGroup107),
                                                        fit: BoxFit.cover)),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgGlobe,
                                                          height: 24.v,
                                                          width: 32.h,
                                                          radius: BorderRadius
                                                              .circular(8.h)),
                                                      SizedBox(height: 22.v),
                                                      Text(
                                                          "msg_card_holder_name"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .labelMedium10),
                                                      SizedBox(height: 7.v),
                                                      Text(
                                                          "lbl_jennyfer_doe".tr,
                                                          style: CustomTextStyles
                                                              .titleSmallOnPrimary),
                                                      SizedBox(height: 22.v)
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: SizedBox(
                                                height: 150.v,
                                                width: 153.h,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topRight,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgEllipse150x153,
                                                          height: 150.v,
                                                          width: 153.h,
                                                          alignment:
                                                              Alignment.center),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgVector,
                                                          height: 16.v,
                                                          width: 50.h,
                                                          radius: BorderRadius
                                                              .circular(8.h),
                                                          alignment: Alignment
                                                              .topRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 19.v,
                                                                  right: 24.h))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 24.h, top: 76.v),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: "msg2".tr,
                                                          style: CustomTextStyles
                                                              .headlineSmall_1),
                                                      TextSpan(
                                                          text: "lbl_4546".tr,
                                                          style: CustomTextStyles
                                                              .headlineSmallRegular)
                                                    ]),
                                                    textAlign:
                                                        TextAlign.left))),
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    right: 24.h, bottom: 47.v),
                                                child: Text(
                                                    "lbl_expiry_date".tr,
                                                    style: CustomTextStyles
                                                        .labelMedium10))),
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    right: 44.h, bottom: 27.v),
                                                child: Text("lbl_11_22".tr,
                                                    style: CustomTextStyles
                                                        .titleSmallOnPrimary)))
                                      ])))),
                      CustomCheckboxButton(
                          text: "msg_use_as_default_payment".tr,
                          value: paymentmethodna,
                          margin: EdgeInsets.only(
                              left: 16.h, top: 25.v, bottom: 86.v),
                          padding: EdgeInsets.symmetric(vertical: 1.v),
                          onChange: (value) {
                            paymentmethodna = value;
                          })
                    ])),
            floatingActionButton: CustomFloatingButton(
                height: 36,
                width: 36,
                backgroundColor: appTheme.gray900,
                child: CustomImageView(
                    svgPath: ImageConstant.imgGrid,
                    height: 18.0.v,
                    width: 18.0.h))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
