import '../favorites_modules_screen/widgets/tags_item_widget.dart';
import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/presentation/catalog_one_page/catalog_one_page.dart';
import 'package:ecommerce_user/presentation/favorites_lists_page/favorites_lists_page.dart';
import 'package:ecommerce_user/presentation/main_page/main_page.dart';
import 'package:ecommerce_user/presentation/my_bag_page/my_bag_page.dart';
import 'package:ecommerce_user/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_image_1.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_subtitle.dart';
import 'package:ecommerce_user/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_user/widgets/custom_bottom_bar.dart';
import 'package:ecommerce_user/widgets/custom_icon_button.dart';
import 'package:ecommerce_user/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class FavoritesModulesScreen extends StatelessWidget {
  FavoritesModulesScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 136.v,
                  width: 452.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          decoration: AppDecoration.outlineBlack9001,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 8.v),
                                decoration: AppDecoration.background,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 4.v),
                                    CustomAppBar(
                                      centerTitle: true,
                                      title: AppbarSubtitle(
                                        text: "lbl_favorites".tr,
                                      ),
                                      actions: [
                                        AppbarImage1(
                                          svgPath: ImageConstant
                                              .imgBaselinesearch24pxGray900,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 11.h),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(13.h, 56.v, 13.h, 12.v),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                      svgPath: ImageConstant.imgView,
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
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 136.v,
                          child: ListView.separated(
                            padding: EdgeInsets.only(
                              left: 15.h,
                              top: 51.v,
                              bottom: 55.v,
                            ),
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (
                              context,
                              index,
                            ) {
                              return SizedBox(
                                width: 12.h,
                              );
                            },
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return TagsItemWidget();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 205.v,
                                width: 164.h,
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: SizedBox(
                                        height: 184.v,
                                        width: 162.h,
                                        child: Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage25,
                                              height: 184.v,
                                              width: 162.h,
                                              radius: BorderRadius.circular(
                                                8.h,
                                              ),
                                              alignment: Alignment.center,
                                            ),
                                            CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgIconGray50040x40,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize,
                                              alignment: Alignment.topRight,
                                              margin: EdgeInsets.only(
                                                top: 2.v,
                                                right: 3.h,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    CustomIconButton(
                                      height: 36.adaptSize,
                                      width: 36.adaptSize,
                                      margin: EdgeInsets.only(bottom: 2.v),
                                      padding: EdgeInsets.all(10.h),
                                      decoration:
                                          IconButtonStyleHelper.outlinePrimary,
                                      alignment: Alignment.bottomRight,
                                      child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgShoppingbagiconactivated,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Row(
                                        children: [
                                          CustomRatingBar(
                                            initialRating: 0,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 2.h,
                                              top: 3.v,
                                            ),
                                            child: Text(
                                              "lbl_102".tr,
                                              style: theme.textTheme.bodySmall,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 7.v),
                              Text(
                                "lbl_lime".tr,
                                style: CustomTextStyles.bodySmall11,
                              ),
                              SizedBox(height: 2.v),
                              Text(
                                "lbl_shirt2".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                              SizedBox(height: 4.v),
                              Row(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "lbl_color".tr,
                                          style: CustomTextStyles.bodySmall11_2,
                                        ),
                                        TextSpan(
                                          text: " ",
                                        ),
                                        TextSpan(
                                          text: "lbl_blue".tr,
                                          style: CustomTextStyles
                                              .bodySmallGray90011_1,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 25.h),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "lbl_size2".tr,
                                            style:
                                                CustomTextStyles.bodySmall11_1,
                                          ),
                                          TextSpan(
                                            text: " ",
                                          ),
                                          TextSpan(
                                            text: "lbl_l".tr,
                                            style: CustomTextStyles
                                                .bodySmallGray90011,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 6.v),
                              Text(
                                "lbl_10".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 17.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 205.v,
                                  width: 164.h,
                                  child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: SizedBox(
                                          height: 184.v,
                                          width: 162.h,
                                          child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage26,
                                                height: 184.v,
                                                width: 162.h,
                                                radius: BorderRadius.circular(
                                                  8.h,
                                                ),
                                                alignment: Alignment.center,
                                              ),
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Container(
                                                  width: 151.h,
                                                  margin: EdgeInsets.fromLTRB(
                                                      8.h, 2.v, 3.h, 152.v),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            top: 6.v),
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                          horizontal: 5.h,
                                                          vertical: 6.v,
                                                        ),
                                                        decoration:
                                                            AppDecoration
                                                                .fillGray
                                                                .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .circleBorder12,
                                                        ),
                                                        child: Text(
                                                          "lbl_new2".tr,
                                                          style: theme.textTheme
                                                              .labelMedium,
                                                        ),
                                                      ),
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgIconGray50040x40,
                                                        height: 24.adaptSize,
                                                        width: 24.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            bottom: 6.v),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      CustomIconButton(
                                        height: 36.adaptSize,
                                        width: 36.adaptSize,
                                        margin: EdgeInsets.only(bottom: 2.v),
                                        padding: EdgeInsets.all(10.h),
                                        decoration: IconButtonStyleHelper
                                            .outlinePrimary,
                                        alignment: Alignment.bottomRight,
                                        child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgShoppingbagiconactivated,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Row(
                                          children: [
                                            CustomRatingBar(
                                              initialRating: 0,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: 3.h,
                                                top: 3.v,
                                              ),
                                              child: Text(
                                                "lbl_0".tr,
                                                style:
                                                    theme.textTheme.bodySmall,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 1.h,
                                    top: 8.v,
                                  ),
                                  child: Text(
                                    "lbl_mango".tr,
                                    style: CustomTextStyles.bodySmall11,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 1.h,
                                    top: 2.v,
                                  ),
                                  child: Text(
                                    "msg_longsleeve_violeta".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 1.h,
                                    top: 3.v,
                                  ),
                                  child: Row(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "lbl_color".tr,
                                              style: CustomTextStyles
                                                  .bodySmall11_2,
                                            ),
                                            TextSpan(
                                              text: " ",
                                            ),
                                            TextSpan(
                                              text: "lbl_orange".tr,
                                              style: CustomTextStyles
                                                  .bodySmallGray90011_1,
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 8.h),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "lbl_size2".tr,
                                                style: CustomTextStyles
                                                    .bodySmall11_1,
                                              ),
                                              TextSpan(
                                                text: " ",
                                              ),
                                              TextSpan(
                                                text: "lbl_s".tr,
                                                style: CustomTextStyles
                                                    .bodySmallGray90011,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 1.h,
                                    top: 5.v,
                                  ),
                                  child: Text(
                                    "lbl_46".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 21.v),
                      Row(
                        children: [
                          SizedBox(
                            height: 280.v,
                            width: 164.h,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage27,
                                  height: 184.v,
                                  width: 162.h,
                                  radius: BorderRadius.circular(
                                    8.h,
                                  ),
                                  alignment: Alignment.topCenter,
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 2.v),
                                    child: Text(
                                      "lbl_52".tr,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 37.v),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 1.h),
                                          child: Text(
                                            "lbl_olivier".tr,
                                            style: CustomTextStyles.bodySmall11,
                                          ),
                                        ),
                                        SizedBox(height: 2.v),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "lbl_shirt2".tr,
                                            style: theme.textTheme.titleMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 75.v),
                                    child: Row(
                                      children: [
                                        CustomRatingBar(
                                          initialRating: 0,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 2.h,
                                            top: 3.v,
                                          ),
                                          child: Text(
                                            "lbl_102".tr,
                                            style: theme.textTheme.bodySmall,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      right: 48.h,
                                      bottom: 22.v,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "lbl_size2".tr,
                                            style:
                                                CustomTextStyles.bodySmall11_1,
                                          ),
                                          TextSpan(
                                            text: " ",
                                          ),
                                          TextSpan(
                                            text: "lbl_l".tr,
                                            style: CustomTextStyles
                                                .bodySmallGray90011,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 21.v),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "lbl_color".tr,
                                            style:
                                                CustomTextStyles.bodySmall11_2,
                                          ),
                                          TextSpan(
                                            text: " ",
                                          ),
                                          TextSpan(
                                            text: "lbl_gray".tr,
                                            style: CustomTextStyles
                                                .bodySmallGray90011_1,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 2.v),
                                    decoration: AppDecoration.fillOnPrimary,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgIconGray50040x40,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize,
                                          margin: EdgeInsets.only(right: 4.h),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                            top: 122.v,
                                            right: 1.h,
                                            bottom: 94.v,
                                          ),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 11.h,
                                            vertical: 4.v,
                                          ),
                                          decoration: AppDecoration
                                              .fillOnPrimary
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .customBorderBL8,
                                          ),
                                          child: SizedBox(
                                            width: 139.h,
                                            child: Text(
                                              "msg_sorry_this_item2".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .bodySmallGray900
                                                  .copyWith(
                                                height: 1.20,
                                              ),
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
                            padding: EdgeInsets.only(
                              left: 16.h,
                              bottom: 2.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 205.v,
                                  width: 164.h,
                                  child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: SizedBox(
                                          height: 184.v,
                                          width: 162.h,
                                          child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage28,
                                                height: 184.v,
                                                width: 162.h,
                                                radius: BorderRadius.circular(
                                                  8.h,
                                                ),
                                                alignment: Alignment.center,
                                              ),
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Container(
                                                  width: 151.h,
                                                  margin: EdgeInsets.fromLTRB(
                                                      8.h, 2.v, 3.h, 152.v),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            top: 6.v),
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
                                                                  .circleBorder12,
                                                        ),
                                                        child: Text(
                                                          "lbl_302".tr,
                                                          style: theme.textTheme
                                                              .labelMedium,
                                                        ),
                                                      ),
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgIconGray50040x40,
                                                        height: 24.adaptSize,
                                                        width: 24.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            bottom: 6.v),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      CustomIconButton(
                                        height: 36.adaptSize,
                                        width: 36.adaptSize,
                                        margin: EdgeInsets.only(bottom: 2.v),
                                        padding: EdgeInsets.all(10.h),
                                        decoration: IconButtonStyleHelper
                                            .outlinePrimary,
                                        alignment: Alignment.bottomRight,
                                        child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgShoppingbagiconactivated,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Row(
                                          children: [
                                            CustomRatingBar(
                                              initialRating: 0,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: 3.h,
                                                top: 3.v,
                                              ),
                                              child: Text(
                                                "lbl_0".tr,
                                                style:
                                                    theme.textTheme.bodySmall,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 1.h,
                                    top: 7.v,
                                  ),
                                  child: Text(
                                    "lbl_berries".tr,
                                    style: CustomTextStyles.bodySmall11,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 1.h,
                                    top: 2.v,
                                  ),
                                  child: Text(
                                    "lbl_t_shirt2".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 1.h,
                                    top: 4.v,
                                  ),
                                  child: Row(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "lbl_color".tr,
                                              style: CustomTextStyles
                                                  .bodySmall11_2,
                                            ),
                                            TextSpan(
                                              text: " ",
                                            ),
                                            TextSpan(
                                              text: "lbl_black".tr,
                                              style: CustomTextStyles
                                                  .bodySmallGray90011_1,
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 19.h),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "lbl_size2".tr,
                                                style: CustomTextStyles
                                                    .bodySmall11_1,
                                              ),
                                              TextSpan(
                                                text: " ",
                                              ),
                                              TextSpan(
                                                text: "lbl_s".tr,
                                                style: CustomTextStyles
                                                    .bodySmallGray90011,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 1.h,
                                    top: 5.v,
                                  ),
                                  child: Row(
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
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 9.v),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.mainPage;
      case BottomBarEnum.Shop:
        return AppRoutes.catalogOnePage;
      case BottomBarEnum.Bag:
        return AppRoutes.myBagPage;
      case BottomBarEnum.Favorites:
        return AppRoutes.favoritesListsPage;
      case BottomBarEnum.Profile:
        return AppRoutes.myProfileMyOrdersOrderDetailsPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.mainPage:
        return MainPage();
      case AppRoutes.catalogOnePage:
        return CatalogOnePage();
      case AppRoutes.myBagPage:
        return MyBagPage();
      case AppRoutes.favoritesListsPage:
        return FavoritesListsPage();
      case AppRoutes.myProfileMyOrdersOrderDetailsPage:
        return MyProfileMyOrdersOrderDetailsPage();
      default:
        return DefaultWidget();
    }
  }
}
