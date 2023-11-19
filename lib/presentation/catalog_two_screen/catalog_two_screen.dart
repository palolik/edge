import '../catalog_two_screen/widgets/chipviewtagsele2_item_widget.dart';
import '../catalog_two_screen/widgets/productcard2_item_widget.dart';
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
class CatalogTwoScreen extends StatelessWidget {
  CatalogTwoScreen({Key? key}) : super(key: key);

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
                                leadingWidth: 32.h,
                                leading: AppbarImage(
                                    svgPath: ImageConstant.imgArrowleft,
                                    margin: EdgeInsets.only(left: 8.h),
                                    onTap: () {
                                      onTapArrowleftone(context);
                                    }),
                                centerTitle: true,
                                title:
                                    AppbarSubtitle(text: "lbl_women_s_tops".tr),
                                actions: [
                                  AppbarImage1(
                                      svgPath: ImageConstant
                                          .imgBaselinesearch24pxGray900,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 11.h))
                                ])
                          ])),
                  Expanded(
                      child: SizedBox(
                          width: double.maxFinite,
                          child: Column(children: [
                            Container(
                                padding: EdgeInsets.symmetric(vertical: 8.v),
                                decoration: AppDecoration.outlineBlack9001,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          padding: EdgeInsets.only(left: 16.h),
                                          child: IntrinsicWidth(
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                Wrap(
                                                    runSpacing: 7.v,
                                                    spacing: 7.h,
                                                    children: List<
                                                            Widget>.generate(
                                                        3,
                                                        (index) =>
                                                            Chipviewtagsele2ItemWidget())),
                                                CustomElevatedButton(
                                                    height: 30.v,
                                                    width: 100.h,
                                                    text: "lbl_shirts".tr,
                                                    margin: EdgeInsets.only(
                                                        left: 8.h),
                                                    buttonStyle:
                                                        CustomButtonStyles
                                                            .fillGray)
                                              ]))),
                                      Container(
                                          margin: EdgeInsets.fromLTRB(
                                              16.h, 18.v, 16.h, 2.v),
                                          decoration: AppDecoration.background,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgBaselinefilterlist24px,
                                                    height: 24.adaptSize,
                                                    width: 24.adaptSize),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 7.h,
                                                        top: 5.v,
                                                        bottom: 7.v),
                                                    child: Text(
                                                        "lbl_filters".tr,
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
                                                        left: 6.h,
                                                        top: 6.v,
                                                        bottom: 6.v),
                                                    child: Text(
                                                        "msg_price_lowest_to"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .bodySmallGray900)),
                                                Spacer(flex: 51),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgViewGray900,
                                                    height: 24.adaptSize,
                                                    width: 24.adaptSize)
                                              ]))
                                    ])),
                            Expanded(
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 16.h, top: 16.v, right: 16.h),
                                    child: GridView.builder(
                                        shrinkWrap: true,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                mainAxisExtent: 263.v,
                                                crossAxisCount: 2,
                                                mainAxisSpacing: 18.h,
                                                crossAxisSpacing: 18.h),
                                        physics: BouncingScrollPhysics(),
                                        itemCount: 4,
                                        itemBuilder: (context, index) {
                                          return Productcard2ItemWidget();
                                        })))
                          ])))
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
