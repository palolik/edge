import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_image.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_subtitle.dart';
import 'package:ecommerce_user/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_user/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class VisualSearchCropTheItemScreen extends StatelessWidget {
  const VisualSearchCropTheItemScreen({Key? key}) : super(key: key);

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
                      decoration: AppDecoration.outlineBlack900,
                      child: Container(
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
                                        text: "lbl_crop_the_item".tr))
                              ]))),
                  SizedBox(
                      height: 629.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.topCenter, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgD3bdd2cbe99a1c4,
                            height: 618.v,
                            width: 375.h,
                            alignment: Alignment.center),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                height: 218.v,
                                width: 220.h,
                                margin: EdgeInsets.only(top: 13.v),
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgD3bdd2cbe99a1c4212x255,
                                          height: 212.v,
                                          width: 255.h,
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                              height: 6.v,
                                              width: 32.h,
                                              decoration: BoxDecoration(
                                                  color: theme
                                                      .colorScheme.onPrimary
                                                      .withOpacity(1)))),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                              height: 6.v,
                                              width: 32.h,
                                              decoration: BoxDecoration(
                                                  color: theme
                                                      .colorScheme.onPrimary
                                                      .withOpacity(1)))),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: SizedBox(
                                              height: 35.v,
                                              child: VerticalDivider(
                                                  width: 6.h,
                                                  thickness: 6.v,
                                                  color: theme
                                                      .colorScheme.onPrimary
                                                      .withOpacity(1),
                                                  indent: 3.h))),
                                      Align(
                                          alignment: Alignment.bottomRight,
                                          child: SizedBox(
                                              height: 35.v,
                                              child: VerticalDivider(
                                                  width: 6.h,
                                                  thickness: 6.v,
                                                  color: theme
                                                      .colorScheme.onPrimary
                                                      .withOpacity(1),
                                                  endIndent: 3.h))),
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: SizedBox(
                                              height: 32.v,
                                              child: VerticalDivider(
                                                  width: 6.h,
                                                  thickness: 6.v,
                                                  color: theme
                                                      .colorScheme.onPrimary
                                                      .withOpacity(1)))),
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                              height: 6.v,
                                              width: 32.h,
                                              margin:
                                                  EdgeInsets.only(right: 3.h),
                                              decoration: BoxDecoration(
                                                  color: theme
                                                      .colorScheme.onPrimary
                                                      .withOpacity(1)))),
                                      Align(
                                          alignment: Alignment.bottomLeft,
                                          child: SizedBox(
                                              height: 32.v,
                                              child: VerticalDivider(
                                                  width: 6.h,
                                                  thickness: 6.v,
                                                  color: theme
                                                      .colorScheme.onPrimary
                                                      .withOpacity(1)))),
                                      Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Container(
                                              height: 6.v,
                                              width: 32.h,
                                              margin:
                                                  EdgeInsets.only(left: 3.h),
                                              decoration: BoxDecoration(
                                                  color: theme
                                                      .colorScheme.onPrimary
                                                      .withOpacity(1))))
                                    ])))
                      ]))
                ])),
            bottomNavigationBar: Container(
                height: 52.adaptSize,
                width: 52.adaptSize,
                margin:
                    EdgeInsets.only(left: 161.h, right: 161.h, bottom: 43.v),
                decoration: AppDecoration.white,
                child: CustomIconButton(
                    height: 52.adaptSize,
                    width: 52.adaptSize,
                    padding: EdgeInsets.all(14.h),
                    decoration: IconButtonStyleHelper.fillPrimary,
                    alignment: Alignment.center,
                    child: CustomImageView(
                        svgPath: ImageConstant.imgBaselinesearch24px)))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
