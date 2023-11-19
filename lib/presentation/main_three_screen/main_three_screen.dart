import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/presentation/catalog_one_page/catalog_one_page.dart';
import 'package:ecommerce_user/presentation/favorites_lists_page/favorites_lists_page.dart';
import 'package:ecommerce_user/presentation/main_page/main_page.dart';
import 'package:ecommerce_user/presentation/my_bag_page/my_bag_page.dart';
import 'package:ecommerce_user/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';
import 'package:ecommerce_user/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class MainThreeScreen extends StatelessWidget {
  MainThreeScreen({Key? key})
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
            children: [
              SizedBox(
                height: 322.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage4322x375,
                      height: 322.v,
                      width: 375.h,
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 18.h,
                          vertical: 29.v,
                        ),
                        decoration: AppDecoration.gradientBlackToGray,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 229.v),
                            Text(
                              "lbl_new_collection".tr,
                              style: CustomTextStyles.displaySmallOnPrimary_1,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Column(
                        children: [
                          Container(
                            width: 187.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 15.h,
                              vertical: 55.v,
                            ),
                            decoration: AppDecoration.fillOnPrimary,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 3.v),
                                SizedBox(
                                  width: 140.h,
                                  child: Text(
                                    "lbl_summer_sale".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.displaySmallPrimary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 187.adaptSize,
                            width: 187.adaptSize,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage2187x187,
                                  height: 187.adaptSize,
                                  width: 187.adaptSize,
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 13.h,
                                      bottom: 38.v,
                                    ),
                                    child: Text(
                                      "lbl_black".tr,
                                      style: CustomTextStyles
                                          .displaySmallOnPrimary_1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 374.v,
                      width: 188.h,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage2374x188,
                            height: 374.v,
                            width: 188.h,
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              margin: EdgeInsets.only(bottom: 72.v),
                              padding: EdgeInsets.symmetric(
                                horizontal: 18.h,
                                vertical: 52.v,
                              ),
                              decoration: AppDecoration.gradientBlackToBlack900,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(height: 27.v),
                                  SizedBox(
                                    width: 133.h,
                                    child: Text(
                                      "lbl_men_s_hoodies".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .displaySmallOnPrimary_1,
                                    ),
                                  ),
                                ],
                              ),
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
