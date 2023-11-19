import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/presentation/catalog_one_page/catalog_one_page.dart';
import 'package:ecommerce_user/presentation/favorites_lists_page/favorites_lists_page.dart';
import 'package:ecommerce_user/presentation/main_page/main_page.dart';
import 'package:ecommerce_user/presentation/my_bag_page/my_bag_page.dart';
import 'package:ecommerce_user/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';
import 'package:ecommerce_user/presentation/my_profile_my_orders_page/my_profile_my_orders_page.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_image.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_image_1.dart';
import 'package:ecommerce_user/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_user/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class MyProfileMyOrdersTabContainerScreen extends StatefulWidget {
  const MyProfileMyOrdersTabContainerScreen({Key? key}) : super(key: key);

  @override
  MyProfileMyOrdersTabContainerScreenState createState() =>
      MyProfileMyOrdersTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class MyProfileMyOrdersTabContainerScreenState
    extends State<MyProfileMyOrdersTabContainerScreen>
    with TickerProviderStateMixin {
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
            appBar: CustomAppBar(
                height: 40.v,
                leadingWidth: 33.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 9.h, top: 8.v, bottom: 8.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgBaselinesearch24pxGray900,
                      margin:
                          EdgeInsets.symmetric(horizontal: 11.h, vertical: 8.v))
                ]),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 14.h, top: 23.v),
                          child: Text("lbl_my_orders2".tr,
                              style: theme.textTheme.displaySmall)),
                      Container(
                          height: 30.v,
                          width: 323.h,
                          margin: EdgeInsets.only(left: 14.h, top: 24.v),
                          child: TabBar(
                              controller: tabviewController,
                              labelPadding: EdgeInsets.zero,
                              labelColor:
                                  theme.colorScheme.onPrimary.withOpacity(1),
                              labelStyle: TextStyle(
                                  fontSize: 14.fSize,
                                  fontFamily: 'Metropolis',
                                  fontWeight: FontWeight.w500),
                              unselectedLabelColor: appTheme.gray900,
                              unselectedLabelStyle: TextStyle(
                                  fontSize: 14.fSize,
                                  fontFamily: 'Metropolis',
                                  fontWeight: FontWeight.w500),
                              indicator: BoxDecoration(
                                  color: appTheme.gray900,
                                  borderRadius: BorderRadius.circular(15.h)),
                              tabs: [
                                Tab(child: Text("lbl_delivered".tr)),
                                Tab(child: Text("lbl_processing".tr)),
                                Tab(child: Text("lbl_cancelled".tr))
                              ])),
                      SizedBox(
                          height: 535.v,
                          child: TabBarView(
                              controller: tabviewController,
                              children: [
                                MyProfileMyOrdersPage(),
                                MyProfileMyOrdersPage(),
                                MyProfileMyOrdersPage()
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
