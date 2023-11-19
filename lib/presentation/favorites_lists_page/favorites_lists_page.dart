import '../favorites_lists_page/widgets/chipviewtagsele6_item_widget.dart';
import '../favorites_lists_page/widgets/productcardlist1_item_widget.dart';
import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/custom_elevated_button.dart';
import 'package:ecommerce_user/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FavoritesListsPage extends StatelessWidget {
  const FavoritesListsPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.background,
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: IntrinsicWidth(
                  child: SizedBox(
                    height: 192.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 192.v,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: appTheme.gray50,
                              boxShadow: [
                                BoxShadow(
                                  color: appTheme.black900.withOpacity(0.12),
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: Offset(
                                    0,
                                    4,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                svgPath:
                                    ImageConstant.imgBaselinesearch24pxGray900,
                                height: 20.adaptSize,
                                width: 24.adaptSize,
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(right: 89.h),
                              ),
                              SizedBox(height: 27.v),
                              Text(
                                "lbl_favorites".tr,
                                style: theme.textTheme.displaySmall,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 2.h,
                                  top: 14.v,
                                ),
                                child: Row(
                                  children: [
                                    Wrap(
                                      runSpacing: 12.v,
                                      spacing: 12.h,
                                      children: List<Widget>.generate(
                                          3,
                                          (index) =>
                                              Chipviewtagsele6ItemWidget()),
                                    ),
                                    CustomElevatedButton(
                                      height: 30.v,
                                      width: 100.h,
                                      text: "lbl_shirts".tr,
                                      margin: EdgeInsets.only(left: 12.h),
                                      buttonStyle: CustomButtonStyles.fillGray,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 2.h,
                                  top: 18.v,
                                  right: 94.h,
                                ),
                                child: Row(
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant
                                          .imgBaselinefilterlist24px,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 7.h,
                                        top: 5.v,
                                        bottom: 7.v,
                                      ),
                                      child: Text(
                                        "lbl_filters".tr,
                                        style:
                                            CustomTextStyles.bodySmallGray900,
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath:
                                          ImageConstant.imgBaselineswapvert24px,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      margin: EdgeInsets.only(left: 61.h),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 6.h,
                                        top: 6.v,
                                        bottom: 6.v,
                                      ),
                                      child: Text(
                                        "msg_price_lowest_to".tr,
                                        style:
                                            CustomTextStyles.bodySmallGray900,
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgViewGray900,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      margin: EdgeInsets.only(left: 63.h),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 16.v,
                    right: 16.h,
                  ),
                  child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        height: 16.v,
                      );
                    },
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Productcardlist1ItemWidget();
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 116.v,
                width: 343.h,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 12.v),
                        decoration: AppDecoration.fillOnPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 104.adaptSize,
                              width: 104.adaptSize,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage20,
                                    height: 104.adaptSize,
                                    width: 104.adaptSize,
                                    radius: BorderRadius.horizontal(
                                      left: Radius.circular(8.h),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                      height: 104.adaptSize,
                                      width: 104.adaptSize,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant.imgImage22,
                                            height: 104.adaptSize,
                                            width: 104.adaptSize,
                                            radius: BorderRadius.horizontal(
                                              left: Radius.circular(8.h),
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                              height: 104.adaptSize,
                                              width: 104.adaptSize,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgImage23,
                                                    height: 104.adaptSize,
                                                    width: 104.adaptSize,
                                                    radius:
                                                        BorderRadius.horizontal(
                                                      left:
                                                          Radius.circular(8.h),
                                                    ),
                                                    alignment: Alignment.center,
                                                  ),
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: SizedBox(
                                                      height: 104.adaptSize,
                                                      width: 104.adaptSize,
                                                      child: Stack(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        children: [
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage24,
                                                            height:
                                                                104.adaptSize,
                                                            width:
                                                                104.adaptSize,
                                                            radius: BorderRadius
                                                                .horizontal(
                                                              left: Radius
                                                                  .circular(
                                                                      8.h),
                                                            ),
                                                            alignment: Alignment
                                                                .center,
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                left: 4.h,
                                                                top: 5.v,
                                                              ),
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                horizontal: 5.h,
                                                                vertical: 6.v,
                                                              ),
                                                              decoration:
                                                                  AppDecoration
                                                                      .fillPrimary
                                                                      .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .customBorderTL8,
                                                              ),
                                                              child: Text(
                                                                "lbl_302".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelMedium,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 14.v),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_berries".tr,
                                    style: CustomTextStyles.bodySmall11,
                                  ),
                                  SizedBox(height: 2.v),
                                  Text(
                                    "lbl_t_shirt2".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                  SizedBox(height: 31.v),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 14.v,
                                        width: 26.h,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                height: 1.v,
                                                width: 23.h,
                                                decoration: BoxDecoration(
                                                  color: appTheme.gray500,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                "lbl_55".tr,
                                                style: CustomTextStyles
                                                    .titleSmallGray500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 3.h),
                                        child: Text(
                                          "lbl_39".tr,
                                          style: CustomTextStyles
                                              .titleSmallPrimary,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgStar,
                                        height: 14.adaptSize,
                                        width: 14.adaptSize,
                                        margin: EdgeInsets.only(left: 27.h),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgStar,
                                        height: 14.adaptSize,
                                        width: 14.adaptSize,
                                        margin: EdgeInsets.only(left: 1.h),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgStar,
                                        height: 14.adaptSize,
                                        width: 14.adaptSize,
                                        margin: EdgeInsets.only(left: 1.h),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgStar,
                                        height: 14.adaptSize,
                                        width: 14.adaptSize,
                                        margin: EdgeInsets.only(left: 1.h),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgStar,
                                        height: 14.adaptSize,
                                        width: 14.adaptSize,
                                        margin: EdgeInsets.only(left: 1.h),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 3.h,
                                          top: 3.v,
                                        ),
                                        child: Text(
                                          "lbl_0".tr,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgIconGray50040x40,
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              margin: EdgeInsets.only(bottom: 64.v),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomIconButton(
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.outlinePrimary,
                      alignment: Alignment.bottomRight,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgShoppingbagiconactivated,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
