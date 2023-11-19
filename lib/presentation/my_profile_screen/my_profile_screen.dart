import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/presentation/catalog_one_page/catalog_one_page.dart';
import 'package:ecommerce_user/presentation/favorites_lists_page/favorites_lists_page.dart';
import 'package:ecommerce_user/presentation/main_page/main_page.dart';
import 'package:ecommerce_user/presentation/my_bag_page/my_bag_page.dart';
import 'package:ecommerce_user/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';
import 'package:ecommerce_user/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {
  MyProfileScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 8.v),
          child: Column(
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgBaselinesearch24pxGray900,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(right: 11.h),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 14.h,
                    top: 30.v,
                  ),
                  child: Text(
                    "lbl_my_profile".tr,
                    style: theme.textTheme.displaySmall,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 24.v,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage64x64,
                        height: 64.adaptSize,
                        width: 64.adaptSize,
                        radius: BorderRadius.circular(
                          32.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 18.h,
                          bottom: 25.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_matilda_brown".tr,
                              style: CustomTextStyles.titleMedium18_1,
                            ),
                            SizedBox(height: 6.v),
                            Text(
                              "msg_matildabrown_mail_com".tr,
                              style: CustomTextStyles.titleSmallGray500,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.h,
                  top: 46.v,
                  right: 8.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_my_orders".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "msg_already_have_12".tr,
                          style: CustomTextStyles.bodySmall11,
                        ),
                      ],
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightGray500,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        top: 5.v,
                        bottom: 6.v,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.v),
              Opacity(
                opacity: 0.05,
                child: Divider(
                  color: appTheme.gray500.withOpacity(0.37),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.h,
                  top: 18.v,
                  right: 8.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "msg_shipping_addresses2".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "lbl_3_ddresses".tr,
                          style: CustomTextStyles.bodySmall11,
                        ),
                      ],
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightGray500,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 5.v),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17.v),
              Opacity(
                opacity: 0.05,
                child: Divider(
                  color: appTheme.gray500.withOpacity(0.37),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.h,
                  top: 19.v,
                  right: 8.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_payment_methods".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 6.v),
                        Text(
                          "lbl_visa_34".tr,
                          style: CustomTextStyles.bodySmall11,
                        ),
                      ],
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightGray500,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        top: 4.v,
                        bottom: 5.v,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17.v),
              Opacity(
                opacity: 0.05,
                child: Divider(
                  color: appTheme.gray500.withOpacity(0.37),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.h,
                  top: 18.v,
                  right: 8.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_promocodes".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 9.v),
                        Text(
                          "msg_you_have_special".tr,
                          style: CustomTextStyles.bodySmall11,
                        ),
                      ],
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightGray500,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        top: 5.v,
                        bottom: 6.v,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.v),
              Opacity(
                opacity: 0.05,
                child: Divider(
                  color: appTheme.gray500.withOpacity(0.37),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.h,
                  top: 19.v,
                  right: 8.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_my_reviews".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 7.v),
                        Text(
                          "msg_reviews_for_4_items".tr,
                          style: CustomTextStyles.bodySmall11,
                        ),
                      ],
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightGray500,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        top: 4.v,
                        bottom: 5.v,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17.v),
              Opacity(
                opacity: 0.05,
                child: Divider(
                  color: appTheme.gray500.withOpacity(0.37),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15.h, 19.v, 8.h, 5.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_settings".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 7.v),
                        Text(
                          "msg_notifications_password".tr,
                          style: CustomTextStyles.bodySmall11,
                        ),
                      ],
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightGray500,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        top: 4.v,
                        bottom: 6.v,
                      ),
                    ),
                  ],
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
