import '../main_two_screen/widgets/productcard1_item_widget.dart';
import '../main_two_screen/widgets/productcardsale_item_widget.dart';
import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/presentation/catalog_one_page/catalog_one_page.dart';
import 'package:ecommerce_user/presentation/favorites_lists_page/favorites_lists_page.dart';
import 'package:ecommerce_user/presentation/main_page/main_page.dart';
import 'package:ecommerce_user/presentation/my_bag_page/my_bag_page.dart';
import 'package:ecommerce_user/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';
import 'package:ecommerce_user/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class MainTwoScreen extends StatelessWidget {
  MainTwoScreen({Key? key})
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
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 152.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage152x375,
                        height: 152.v,
                        width: 375.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 152.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgPexelsphoto911677,
                                height: 152.v,
                                width: 375.h,
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 16.h,
                                    bottom: 27.v,
                                  ),
                                  child: Text(
                                    "lbl_street_clothes".tr,
                                    style:
                                        CustomTextStyles.displaySmallOnPrimary,
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
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 18.h,
                      top: 35.v,
                      right: 14.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_sale".tr,
                          style: theme.textTheme.displaySmall,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 15.v,
                            bottom: 7.v,
                          ),
                          child: Text(
                            "lbl_view_all".tr,
                            style: CustomTextStyles.bodySmallGray900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 18.h,
                    top: 6.v,
                  ),
                  child: Text(
                    "msg_super_summer_sale".tr,
                    style: CustomTextStyles.bodySmall11,
                  ),
                ),
                SizedBox(
                  height: 287.v,
                  child: ListView.separated(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      top: 21.v,
                    ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        width: 19.h,
                      );
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ProductcardsaleItemWidget();
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      top: 38.v,
                      right: 15.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_new".tr,
                          style: theme.textTheme.displaySmall,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20.v,
                            bottom: 2.v,
                          ),
                          child: Text(
                            "lbl_view_all".tr,
                            style: CustomTextStyles.bodySmallGray900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 18.h,
                    top: 5.v,
                  ),
                  child: Text(
                    "msg_you_ve_never_seen".tr,
                    style: CustomTextStyles.bodySmall11,
                  ),
                ),
                SizedBox(
                  height: 288.v,
                  child: ListView.separated(
                    padding: EdgeInsets.only(
                      left: 17.h,
                      top: 22.v,
                    ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        width: 17.h,
                      );
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Productcard1ItemWidget();
                    },
                  ),
                ),
              ],
            ),
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
