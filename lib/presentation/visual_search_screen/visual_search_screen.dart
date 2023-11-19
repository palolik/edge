import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_image.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_subtitle.dart';
import 'package:ecommerce_user/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_user/widgets/custom_elevated_button.dart';
import 'package:ecommerce_user/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class VisualSearchScreen extends StatelessWidget {
  const VisualSearchScreen({Key? key}) : super(key: key);

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
                                title: AppbarSubtitle(
                                    text: "lbl_visual_search".tr))
                          ])),
                  SizedBox(
                      height: 724.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.topCenter, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgImage,
                            height: 724.v,
                            width: 375.h,
                            alignment: Alignment.center),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 16.h, top: 197.v, right: 16.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: 325.h,
                                          margin: EdgeInsets.only(right: 17.h),
                                          child: Text(
                                              "msg_search_for_an_outfit".tr,
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                              style: theme
                                                  .textTheme.headlineSmall!
                                                  .copyWith(height: 1.20))),
                                      SizedBox(height: 26.v),
                                      CustomElevatedButton(
                                          text: "lbl_take_a_photo".tr),
                                      SizedBox(height: 16.v),
                                      CustomOutlinedButton(
                                          height: 48.v,
                                          text: "lbl_upload_an_image".tr,
                                          buttonStyle: CustomButtonStyles
                                              .outlineOnPrimary,
                                          buttonTextStyle: CustomTextStyles
                                              .titleSmallOnPrimary_1)
                                    ])))
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
