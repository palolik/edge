import '../filters_screen/widgets/chipviewtaginac_item_widget.dart';
import '../filters_screen/widgets/chipviewtagsele4_item_widget.dart';
import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_image.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_subtitle.dart';
import 'package:ecommerce_user/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_user/widgets/custom_elevated_button.dart';
import 'package:ecommerce_user/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
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
                                title: AppbarSubtitle(text: "lbl_filters".tr))
                          ])),
                  Column(children: [
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.h, vertical: 11.v),
                        decoration: AppDecoration.background,
                        child: Text("lbl_price_range".tr,
                            style: theme.textTheme.titleMedium)),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 16.h, top: 26.v, right: 16.h),
                        child: Column(children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_78".tr,
                                    style: theme.textTheme.titleSmall),
                                Text("lbl_143".tr,
                                    style: theme.textTheme.titleSmall)
                              ]),
                          SizedBox(height: 1.v),
                          SizedBox(
                              height: 22.v,
                              width: 343.h,
                              child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            height: 3.v,
                                            width: 343.h,
                                            margin:
                                                EdgeInsets.only(bottom: 7.v),
                                            child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: SizedBox(
                                                          width: 343.h,
                                                          child: Divider(
                                                              color: appTheme
                                                                  .gray500))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: SizedBox(
                                                          width: 230.h,
                                                          child: Divider(
                                                              color: theme
                                                                  .colorScheme
                                                                  .primary,
                                                              indent: 101.h)))
                                                ]))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 100.h),
                                            child: Row(children: [
                                              Container(
                                                  height: 22.adaptSize,
                                                  width: 22.adaptSize,
                                                  decoration: BoxDecoration(
                                                      color: theme
                                                          .colorScheme.primary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              11.h))),
                                              Container(
                                                  height: 22.adaptSize,
                                                  width: 22.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 86.h),
                                                  decoration: BoxDecoration(
                                                      color: theme
                                                          .colorScheme.primary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              11.h)))
                                            ])))
                                  ]))
                        ])),
                    SizedBox(height: 24.v),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.h, vertical: 12.v),
                        decoration: AppDecoration.background,
                        child: Text("lbl_colors".tr,
                            style: theme.textTheme.titleMedium)),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 16.h, top: 24.v, right: 27.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgSearch,
                                  height: 44.adaptSize,
                                  width: 44.adaptSize),
                              CustomImageView(
                                  svgPath: ImageConstant.imgColor,
                                  height: 36.adaptSize,
                                  width: 36.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 20.h, top: 4.v, bottom: 4.v)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgUser,
                                  height: 36.adaptSize,
                                  width: 36.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 20.h, top: 4.v, bottom: 4.v)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgColorGray400,
                                  height: 36.adaptSize,
                                  width: 36.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 20.h, top: 4.v, bottom: 4.v)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgSettings,
                                  height: 44.adaptSize,
                                  width: 44.adaptSize,
                                  margin: EdgeInsets.only(left: 20.h)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgClose,
                                  height: 36.adaptSize,
                                  width: 36.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 20.h, top: 4.v, bottom: 4.v))
                            ])),
                    SizedBox(height: 24.v),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.h, vertical: 12.v),
                        decoration: AppDecoration.background,
                        child: Text("lbl_sizes".tr,
                            style: theme.textTheme.titleMedium)),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 16.h, top: 24.v),
                            child: Wrap(
                                runSpacing: 16.v,
                                spacing: 16.h,
                                children: List<Widget>.generate(5,
                                    (index) => ChipviewtaginacItemWidget())))),
                    SizedBox(height: 24.v),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.h, vertical: 11.v),
                        decoration: AppDecoration.background,
                        child: Text("lbl_category".tr,
                            style: theme.textTheme.titleMedium)),
                    SizedBox(height: 24.v),
                    Wrap(
                        runSpacing: 22.v,
                        spacing: 22.h,
                        children: List<Widget>.generate(
                            5, (index) => Chipviewtagsele4ItemWidget())),
                    SizedBox(height: 24.v),
                    SizedBox(
                        height: 148.v,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16.h, vertical: 13.v),
                                  decoration: AppDecoration.background,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 14.v),
                                        Text("lbl_brand".tr,
                                            style: theme.textTheme.titleMedium)
                                      ]))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  width: double.maxFinite,
                                  margin: EdgeInsets.only(top: 44.v),
                                  padding: EdgeInsets.symmetric(vertical: 20.v),
                                  decoration: AppDecoration.outlineBlack9002,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: CustomOutlinedButton(
                                                height: 36.v,
                                                text: "lbl_discard".tr,
                                                margin: EdgeInsets.only(
                                                    right: 11.h, bottom: 28.v),
                                                buttonStyle: CustomButtonStyles
                                                    .outlineGray)),
                                        Expanded(
                                            child: CustomElevatedButton(
                                                height: 36.v,
                                                text: "lbl_apply".tr,
                                                margin: EdgeInsets.only(
                                                    left: 11.h, bottom: 28.v),
                                                buttonStyle: CustomButtonStyles
                                                    .outlineRedFTL18))
                                      ]))),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 16.h, top: 33.v),
                                  child: Text("msg_adidas_originals".tr,
                                      style: CustomTextStyles.bodySmall11)))
                        ]))
                  ])
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
