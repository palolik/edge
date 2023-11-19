import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/presentation/catalog_one_page/catalog_one_page.dart';
import 'package:ecommerce_user/presentation/favorites_lists_page/favorites_lists_page.dart';
import 'package:ecommerce_user/presentation/main_page/main_page.dart';
import 'package:ecommerce_user/presentation/my_bag_page/my_bag_page.dart';
import 'package:ecommerce_user/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_image.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_image_1.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_subtitle.dart';
import 'package:ecommerce_user/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_user/widgets/custom_bottom_bar.dart';
import 'package:ecommerce_user/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CategoriesTwoScreen extends StatelessWidget {
  CategoriesTwoScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
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
                                leadingWidth: 33.h,
                                leading: AppbarImage(
                                    svgPath: ImageConstant.imgArrowleft,
                                    margin: EdgeInsets.only(left: 9.h),
                                    onTap: () {
                                      onTapArrowleftone(context);
                                    }),
                                centerTitle: true,
                                title:
                                    AppbarSubtitle(text: "lbl_categories".tr),
                                actions: [
                                  AppbarImage1(
                                      svgPath: ImageConstant
                                          .imgBaselinesearch24pxGray900,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 10.h))
                                ])
                          ])),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 13.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomElevatedButton(
                                text: "lbl_view_all_items".tr,
                                margin: EdgeInsets.only(
                                    left: 16.h, top: 2.v, right: 16.h),
                                alignment: Alignment.center),
                            Padding(
                                padding: EdgeInsets.only(left: 16.h, top: 19.v),
                                child: Text("lbl_choose_category".tr,
                                    style: CustomTextStyles.titleSmallGray500)),
                            Padding(
                                padding: EdgeInsets.only(left: 40.h, top: 35.v),
                                child: Text("lbl_tops".tr,
                                    style: theme.textTheme.bodyLarge)),
                            SizedBox(height: 16.v),
                            Opacity(opacity: 0.25, child: Divider()),
                            Padding(
                                padding: EdgeInsets.only(left: 40.h, top: 14.v),
                                child: Text("msg_shirts_blouses".tr,
                                    style: theme.textTheme.bodyLarge)),
                            SizedBox(height: 16.v),
                            Opacity(opacity: 0.25, child: Divider()),
                            Padding(
                                padding: EdgeInsets.only(left: 40.h, top: 16.v),
                                child: Text("msg_cardigans_sweaters".tr,
                                    style: theme.textTheme.bodyLarge)),
                            SizedBox(height: 16.v),
                            Opacity(opacity: 0.25, child: Divider()),
                            Padding(
                                padding: EdgeInsets.only(left: 40.h, top: 14.v),
                                child: Text("lbl_knitwear".tr,
                                    style: theme.textTheme.bodyLarge)),
                            SizedBox(height: 17.v),
                            Opacity(opacity: 0.25, child: Divider()),
                            Padding(
                                padding: EdgeInsets.only(left: 40.h, top: 14.v),
                                child: Text("lbl_blazers".tr,
                                    style: theme.textTheme.bodyLarge)),
                            SizedBox(height: 16.v),
                            Opacity(opacity: 0.25, child: Divider()),
                            Padding(
                                padding: EdgeInsets.only(left: 40.h, top: 14.v),
                                child: Text("lbl_outerwear".tr,
                                    style: theme.textTheme.bodyLarge)),
                            SizedBox(height: 18.v),
                            Opacity(opacity: 0.25, child: Divider()),
                            Padding(
                                padding: EdgeInsets.only(left: 40.h, top: 15.v),
                                child: Text("lbl_pants".tr,
                                    style: theme.textTheme.bodyLarge)),
                            SizedBox(height: 16.v),
                            Opacity(opacity: 0.25, child: Divider()),
                            Padding(
                                padding: EdgeInsets.only(left: 40.h, top: 13.v),
                                child: Text("lbl_jeans".tr,
                                    style: theme.textTheme.bodyLarge)),
                            SizedBox(height: 17.v),
                            Opacity(opacity: 0.25, child: Divider()),
                            Padding(
                                padding: EdgeInsets.only(left: 40.h, top: 15.v),
                                child: Text("lbl_shorts".tr,
                                    style: theme.textTheme.bodyLarge)),
                            SizedBox(height: 17.v),
                            Opacity(opacity: 0.25, child: Divider()),
                            Padding(
                                padding: EdgeInsets.only(left: 40.h, top: 15.v),
                                child: Text("lbl_skirts".tr,
                                    style: theme.textTheme.bodyLarge)),
                            SizedBox(height: 16.v),
                            Opacity(opacity: 0.25, child: Divider()),
                            Padding(
                                padding: EdgeInsets.only(left: 40.h, top: 14.v),
                                child: Text("lbl_dresses".tr,
                                    style: theme.textTheme.bodyLarge))
                          ]))
                ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
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

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
