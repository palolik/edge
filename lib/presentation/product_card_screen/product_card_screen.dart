import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_image.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_image_1.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_subtitle.dart';
import 'package:ecommerce_user/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_user/widgets/custom_elevated_button.dart';
import 'package:ecommerce_user/widgets/custom_icon_button.dart';
import 'package:ecommerce_user/widgets/custom_rating_bar.dart';
import 'package:ecommerce_user/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProductCardScreen extends StatelessWidget {
  ProductCardScreen({Key? key}) : super(key: key);

  TextEditingController dropdownunselecController = TextEditingController();

  TextEditingController coloroneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                                title:
                                    AppbarSubtitle(text: "lbl_short_dress".tr),
                                actions: [
                                  AppbarImage1(
                                      svgPath: ImageConstant.imgShare,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 14.h))
                                ])
                          ])),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 5.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        height: 413.v,
                                        width: 275.h,
                                        child: Stack(
                                            alignment: Alignment.centerRight,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgImage413x275,
                                                  height: 413.v,
                                                  width: 275.h,
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: SingleChildScrollView(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      child: IntrinsicWidth(
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top: 410
                                                                            .v),
                                                                child: SizedBox(
                                                                    width:
                                                                        125.h,
                                                                    child: Divider(
                                                                        color: appTheme
                                                                            .gray900))),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgImage413x276,
                                                                height: 413.v,
                                                                width: 276.h)
                                                          ]))))
                                            ])),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 16.h,
                                                top: 12.v,
                                                right: 16.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomTextFormField(
                                                      width: 138.h,
                                                      controller:
                                                          dropdownunselecController,
                                                      hintText: "lbl_size".tr,
                                                      contentPadding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 12.h,
                                                              vertical: 13.v)),
                                                  CustomTextFormField(
                                                      width: 137.h,
                                                      controller:
                                                          coloroneController,
                                                      margin: EdgeInsets.only(
                                                          left: 16.h),
                                                      hintText: "lbl_black".tr,
                                                      textInputAction:
                                                          TextInputAction.done,
                                                      contentPadding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 12.h,
                                                              vertical: 13.v)),
                                                  CustomIconButton(
                                                      height: 36.adaptSize,
                                                      width: 36.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          left: 16.h),
                                                      padding:
                                                          EdgeInsets.all(6.h),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgIcon))
                                                ]))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 16.h,
                                                top: 23.v,
                                                right: 16.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("lbl_h_m".tr,
                                                      style: CustomTextStyles
                                                          .headlineSmallGray900_1),
                                                  Text("lbl_19_99".tr,
                                                      style: CustomTextStyles
                                                          .headlineSmallGray900_1)
                                                ]))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 2.v),
                                        child: Text("msg_short_black_dress".tr,
                                            style:
                                                CustomTextStyles.bodySmall11)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 8.v),
                                        child: Row(children: [
                                          CustomRatingBar(initialRating: 0),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 2.h, top: 3.v),
                                              child: Text("lbl_102".tr,
                                                  style: theme
                                                      .textTheme.bodySmall))
                                        ])),
                                    SizedBox(height: 18.v),
                                    SizedBox(
                                        height: 156.v,
                                        width: double.maxFinite,
                                        child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                      width: 315.h,
                                                      margin: EdgeInsets.only(
                                                          left: 16.h),
                                                      child: Text(
                                                          "msg_short_dress_in_soft"
                                                              .tr,
                                                          maxLines: 5,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: theme.textTheme
                                                              .bodyMedium!
                                                              .copyWith(
                                                                  height:
                                                                      1.50)))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 16.h,
                                                          bottom: 3.v),
                                                      child: Text(
                                                          "lbl_item_details".tr,
                                                          style: theme.textTheme
                                                              .bodyLarge))),
                                              Opacity(
                                                  opacity: 0.25,
                                                  child: Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  bottom: 33.v),
                                                          child: SizedBox(
                                                              width: 374.h,
                                                              child:
                                                                  Divider())))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 16.h,
                                                              vertical: 20.v),
                                                      decoration:
                                                          AppDecoration.white,
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            SizedBox(
                                                                height: 24.v),
                                                            CustomElevatedButton(
                                                                text:
                                                                    "lbl_add_to_cart"
                                                                        .tr)
                                                          ])))
                                            ])),
                                    Opacity(
                                        opacity: 0.25,
                                        child: Padding(
                                            padding: EdgeInsets.only(top: 13.v),
                                            child: Divider(indent: 1.h))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 16.v),
                                        child: Text("lbl_shipping_info".tr,
                                            style: theme.textTheme.bodyLarge)),
                                    SizedBox(height: 16.v),
                                    Opacity(opacity: 0.25, child: Divider()),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 15.v),
                                        child: Text("lbl_support".tr,
                                            style: theme.textTheme.bodyLarge)),
                                    SizedBox(height: 16.v),
                                    Opacity(opacity: 0.25, child: Divider()),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 15.h,
                                                top: 24.v,
                                                right: 15.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                      "msg_you_can_also_like"
                                                          .tr,
                                                      style: CustomTextStyles
                                                          .titleMedium18_1),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 4.v,
                                                          bottom: 2.v),
                                                      child: Text(
                                                          "lbl_12_items".tr,
                                                          style:
                                                              CustomTextStyles
                                                                  .bodySmall11))
                                                ]))),
                                    SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 15.v),
                                        child: IntrinsicWidth(
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                              Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                        height: 205.v,
                                                        width: 149.h,
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  child: SizedBox(
                                                                      height: 184.v,
                                                                      width: 148.h,
                                                                      child: Stack(alignment: Alignment.topLeft, children: [
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgImage2184x148,
                                                                            height: 184.v,
                                                                            width: 148.h,
                                                                            radius: BorderRadius.circular(8.h),
                                                                            alignment: Alignment.center),
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .topLeft,
                                                                            child: Container(
                                                                                margin: EdgeInsets.only(left: 9.h, top: 8.v),
                                                                                padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 6.v),
                                                                                decoration: AppDecoration.fillPrimary.copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
                                                                                child: Text("lbl_20".tr, style: theme.textTheme.labelMedium)))
                                                                      ]))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomLeft,
                                                                  child: Row(
                                                                      children: [
                                                                        CustomRatingBar(
                                                                            initialRating:
                                                                                0),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(left: 2.h, top: 3.v),
                                                                            child: Text("lbl_102".tr, style: theme.textTheme.bodySmall))
                                                                      ])),
                                                              CustomIconButton(
                                                                  height: 36
                                                                      .adaptSize,
                                                                  width: 36
                                                                      .adaptSize,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          bottom: 5
                                                                              .v),
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(6
                                                                              .h),
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight,
                                                                  child: CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgIcon))
                                                            ])),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 1.h,
                                                                top: 6.v),
                                                        child: Text(
                                                            "lbl_dorothy_perkins"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .bodySmall11)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 1.h,
                                                                top: 4.v),
                                                        child: Text(
                                                            "lbl_evening_dress"
                                                                .tr,
                                                            style: theme
                                                                .textTheme
                                                                .titleMedium)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 1.h,
                                                                top: 4.v),
                                                        child: Row(children: [
                                                          SizedBox(
                                                              height: 14.v,
                                                              width: 23.h,
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Container(
                                                                            height:
                                                                                1.v,
                                                                            width: 23.h,
                                                                            decoration: BoxDecoration(color: appTheme.gray500))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Text(
                                                                            "lbl_15"
                                                                                .tr,
                                                                            style:
                                                                                CustomTextStyles.titleSmallGray500))
                                                                  ])),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          4.h),
                                                              child: Text(
                                                                  "lbl_12".tr,
                                                                  style: CustomTextStyles
                                                                      .titleSmallPrimary))
                                                        ]))
                                                  ]),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 13.h),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                            height: 205.v,
                                                            width: 148.h,
                                                            child: Stack(
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .topCenter,
                                                                      child: SizedBox(
                                                                          height: 184.v,
                                                                          width: 148.h,
                                                                          child: Stack(alignment: Alignment.topLeft, children: [
                                                                            CustomImageView(
                                                                                imagePath: ImageConstant.imgImage2,
                                                                                height: 184.v,
                                                                                width: 148.h,
                                                                                radius: BorderRadius.circular(8.h),
                                                                                alignment: Alignment.center),
                                                                            CustomElevatedButton(
                                                                                height: 24.v,
                                                                                width: 40.h,
                                                                                text: "lbl_new2".tr,
                                                                                margin: EdgeInsets.only(left: 9.h, top: 8.v),
                                                                                buttonStyle: CustomButtonStyles.fillGrayTL12,
                                                                                buttonTextStyle: theme.textTheme.labelMedium!,
                                                                                alignment: Alignment.topLeft)
                                                                          ]))),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomLeft,
                                                                      child: Row(
                                                                          children: [
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgStar,
                                                                                height: 14.adaptSize,
                                                                                width: 14.adaptSize),
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgStar,
                                                                                height: 14.adaptSize,
                                                                                width: 14.adaptSize,
                                                                                margin: EdgeInsets.only(left: 1.h)),
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgStar,
                                                                                height: 14.adaptSize,
                                                                                width: 14.adaptSize,
                                                                                margin: EdgeInsets.only(left: 1.h)),
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgStar,
                                                                                height: 14.adaptSize,
                                                                                width: 14.adaptSize,
                                                                                margin: EdgeInsets.only(left: 1.h)),
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgStar,
                                                                                height: 14.adaptSize,
                                                                                width: 14.adaptSize,
                                                                                margin: EdgeInsets.only(left: 1.h)),
                                                                            Padding(
                                                                                padding: EdgeInsets.only(left: 3.h, top: 3.v),
                                                                                child: Text("lbl_0".tr, style: theme.textTheme.bodySmall))
                                                                          ])),
                                                                  CustomIconButton(
                                                                      height: 36
                                                                          .adaptSize,
                                                                      width: 36
                                                                          .adaptSize,
                                                                      margin: EdgeInsets.only(
                                                                          bottom: 5
                                                                              .v),
                                                                      padding: EdgeInsets
                                                                          .all(6
                                                                              .h),
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                      child: CustomImageView(
                                                                          svgPath:
                                                                              ImageConstant.imgIcon))
                                                                ])),
                                                        SizedBox(height: 6.v),
                                                        Text("lbl_mango_boy".tr,
                                                            style:
                                                                CustomTextStyles
                                                                    .bodySmall11),
                                                        SizedBox(height: 4.v),
                                                        Text(
                                                            "lbl_t_shirt_sailing"
                                                                .tr,
                                                            style: theme
                                                                .textTheme
                                                                .titleMedium),
                                                        SizedBox(height: 4.v),
                                                        Text("lbl_10".tr,
                                                            style: theme
                                                                .textTheme
                                                                .titleSmall)
                                                      ])),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 14.h),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                            height: 205.v,
                                                            width: 148.h,
                                                            child: Stack(
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .topCenter,
                                                                      child: SizedBox(
                                                                          height: 184.v,
                                                                          width: 148.h,
                                                                          child: Stack(alignment: Alignment.topLeft, children: [
                                                                            CustomImageView(
                                                                                imagePath: ImageConstant.imgImage2,
                                                                                height: 184.v,
                                                                                width: 148.h,
                                                                                radius: BorderRadius.circular(8.h),
                                                                                alignment: Alignment.center),
                                                                            CustomElevatedButton(
                                                                                height: 24.v,
                                                                                width: 40.h,
                                                                                text: "lbl_new2".tr,
                                                                                margin: EdgeInsets.only(left: 9.h, top: 8.v),
                                                                                buttonStyle: CustomButtonStyles.fillGrayTL12,
                                                                                buttonTextStyle: theme.textTheme.labelMedium!,
                                                                                alignment: Alignment.topLeft)
                                                                          ]))),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomLeft,
                                                                      child: Row(
                                                                          children: [
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgStar,
                                                                                height: 14.adaptSize,
                                                                                width: 14.adaptSize),
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgStar,
                                                                                height: 14.adaptSize,
                                                                                width: 14.adaptSize,
                                                                                margin: EdgeInsets.only(left: 1.h)),
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgStar,
                                                                                height: 14.adaptSize,
                                                                                width: 14.adaptSize,
                                                                                margin: EdgeInsets.only(left: 1.h)),
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgStar,
                                                                                height: 14.adaptSize,
                                                                                width: 14.adaptSize,
                                                                                margin: EdgeInsets.only(left: 1.h)),
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgStar,
                                                                                height: 14.adaptSize,
                                                                                width: 14.adaptSize,
                                                                                margin: EdgeInsets.only(left: 1.h)),
                                                                            Padding(
                                                                                padding: EdgeInsets.only(left: 3.h, top: 4.v),
                                                                                child: Text("lbl_0".tr, style: theme.textTheme.bodySmall))
                                                                          ])),
                                                                  CustomIconButton(
                                                                      height: 36
                                                                          .adaptSize,
                                                                      width: 36
                                                                          .adaptSize,
                                                                      margin: EdgeInsets.only(
                                                                          bottom: 5
                                                                              .v),
                                                                      padding: EdgeInsets
                                                                          .all(6
                                                                              .h),
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                      child: CustomImageView(
                                                                          svgPath:
                                                                              ImageConstant.imgIcon))
                                                                ])),
                                                        SizedBox(height: 6.v),
                                                        Text("lbl_mango_boy".tr,
                                                            style:
                                                                CustomTextStyles
                                                                    .bodySmall11),
                                                        SizedBox(height: 4.v),
                                                        Text(
                                                            "lbl_t_shirt_sailing"
                                                                .tr,
                                                            style: theme
                                                                .textTheme
                                                                .titleMedium),
                                                        SizedBox(height: 4.v),
                                                        Text("lbl_10".tr,
                                                            style: theme
                                                                .textTheme
                                                                .titleSmall)
                                                      ]))
                                            ])))
                                  ]))))
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
