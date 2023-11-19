import '../catalog_one_page/widgets/chipviewtagsele_item_widget.dart';
import '../catalog_one_page/widgets/productcardlist_item_widget.dart';
import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_image_1.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_image_2.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_title.dart';
import 'package:ecommerce_user/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_user/widgets/custom_elevated_button.dart';
import 'package:ecommerce_user/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

class CatalogOnePage extends StatelessWidget {
  const CatalogOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.background,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 8.v),
                      decoration: AppDecoration.outlineBlack9001,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomAppBar(
                                height: 88.v,
                                title: Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Column(children: [
                                      AppbarImage2(
                                          svgPath: ImageConstant.imgArrowleft,
                                          margin: EdgeInsets.only(right: 223.h),
                                          onTap: () {
                                            onTapArrowleftone(context);
                                          }),
                                      AppbarTitle(
                                          text: "lbl_women_s_tops".tr,
                                          margin: EdgeInsets.only(
                                              left: 6.h, top: 31.v))
                                    ])),
                                actions: [
                                  AppbarImage1(
                                      svgPath: ImageConstant
                                          .imgBaselinesearch24pxGray900,
                                      margin: EdgeInsets.only(
                                          left: 11.h,
                                          right: 11.h,
                                          bottom: 64.v))
                                ]),
                            SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                padding: EdgeInsets.only(left: 16.h, top: 12.v),
                                child: IntrinsicWidth(
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                      Wrap(
                                          runSpacing: 7.v,
                                          spacing: 7.h,
                                          children: List<Widget>.generate(
                                              3,
                                              (index) =>
                                                  ChipviewtagseleItemWidget())),
                                      CustomElevatedButton(
                                          height: 30.v,
                                          width: 100.h,
                                          text: "lbl_shirts".tr,
                                          margin: EdgeInsets.only(left: 8.h),
                                          buttonStyle:
                                              CustomButtonStyles.fillGray)
                                    ]))),
                            Container(
                                margin:
                                    EdgeInsets.fromLTRB(16.h, 18.v, 16.h, 2.v),
                                decoration: AppDecoration.background,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant
                                              .imgBaselinefilterlist24px,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 7.h, top: 5.v, bottom: 7.v),
                                          child: Text("lbl_filters".tr,
                                              style: CustomTextStyles
                                                  .bodySmallGray900)),
                                      Spacer(flex: 48),
                                      CustomImageView(
                                          svgPath: ImageConstant
                                              .imgBaselineswapvert24px,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 6.h, top: 6.v, bottom: 6.v),
                                          child: Text("msg_price_lowest_to".tr,
                                              style: CustomTextStyles
                                                  .bodySmallGray900)),
                                      Spacer(flex: 51),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgView,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)
                                    ]))
                          ])),
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 15.h, top: 16.v, right: 15.h),
                          child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: 16.v);
                              },
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return ProductcardlistItemWidget();
                              })))
                ])),
            floatingActionButton: CustomFloatingButton(
                height: 36,
                width: 36,
                backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
                decoration: FloatingButtonStyleHelper.fillOnPrimary,
                child: CustomImageView(
                    svgPath: ImageConstant.imgIcon,
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
