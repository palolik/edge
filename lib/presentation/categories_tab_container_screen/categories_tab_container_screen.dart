import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/presentation/catalog_one_page/catalog_one_page.dart';
import 'package:ecommerce_user/presentation/categories_page/categories_page.dart';
import 'package:ecommerce_user/presentation/favorites_lists_page/favorites_lists_page.dart';
import 'package:ecommerce_user/presentation/main_page/main_page.dart';
import 'package:ecommerce_user/presentation/my_bag_page/my_bag_page.dart';
import 'package:ecommerce_user/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_image.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_image_1.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_subtitle.dart';
import 'package:ecommerce_user/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_user/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class CategoriesTabContainerScreen extends StatefulWidget {
  const CategoriesTabContainerScreen({Key? key}) : super(key: key);

  @override
  CategoriesTabContainerScreenState createState() =>
      CategoriesTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class CategoriesTabContainerScreenState
    extends State<CategoriesTabContainerScreen> with TickerProviderStateMixin {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

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
                                    AppbarSubtitle(text: "lbl_categories".tr),
                                actions: [
                                  AppbarImage1(
                                      svgPath: ImageConstant
                                          .imgBaselinesearch24pxGray900,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 11.h))
                                ])
                          ])),
                  Column(children: [
                    Container(
                        height: 44.v,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimary.withOpacity(1)),
                        child: TabBar(
                            controller: tabviewController,
                            labelPadding: EdgeInsets.zero,
                            labelColor: appTheme.gray900,
                            labelStyle: TextStyle(
                                fontSize: 16.fSize,
                                fontFamily: 'Metropolis',
                                fontWeight: FontWeight.w600),
                            unselectedLabelColor: appTheme.gray900,
                            unselectedLabelStyle: TextStyle(
                                fontSize: 16.fSize,
                                fontFamily: 'Metropolis',
                                fontWeight: FontWeight.w400),
                            indicatorColor: theme.colorScheme.primary,
                            tabs: [
                              Tab(child: Text("lbl_women".tr)),
                              Tab(child: Text("lbl_men".tr)),
                              Tab(child: Text("lbl_kids".tr))
                            ])),
                    Expanded(
                        child: SizedBox(
                            height: 597.v,
                            child: TabBarView(
                                controller: tabviewController,
                                children: [
                                  CategoriesPage(),
                                  CategoriesPage(),
                                  CategoriesPage()
                                ])))
                  ])
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
