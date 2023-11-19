import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/presentation/catalog_one_page/catalog_one_page.dart';
import 'package:ecommerce_user/presentation/favorites_lists_page/favorites_lists_page.dart';
import 'package:ecommerce_user/presentation/main_page/main_page.dart';
import 'package:ecommerce_user/presentation/my_bag_page/my_bag_page.dart';
import 'package:ecommerce_user/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';
import 'package:ecommerce_user/presentation/rating_and_reviews_with_photo_page/rating_and_reviews_with_photo_page.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_image.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_subtitle.dart';
import 'package:ecommerce_user/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_user/widgets/custom_bottom_bar.dart';
import 'package:ecommerce_user/widgets/custom_checkbox_button.dart';
import 'package:flutter/material.dart';

class RatingAndReviewsWithPhotoTabContainerScreen extends StatefulWidget {
  const RatingAndReviewsWithPhotoTabContainerScreen({Key? key})
      : super(key: key);

  @override
  RatingAndReviewsWithPhotoTabContainerScreenState createState() =>
      RatingAndReviewsWithPhotoTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class RatingAndReviewsWithPhotoTabContainerScreenState
    extends State<RatingAndReviewsWithPhotoTabContainerScreen>
    with TickerProviderStateMixin {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  bool withPhoto = false;

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Container(
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
                                    title: AppbarSubtitle(
                                        text: "msg_rating_and_reviews".tr))
                              ]))),
                  SizedBox(height: 39.v),
                  Expanded(
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: SingleChildScrollView(
                              child: SizedBox(
                                  height: 660.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 16.h),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 1.h),
                                                          child: Row(children: [
                                                            Text(
                                                                "lbl_8_reviews"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .headlineSmallGray900),
                                                            CustomCheckboxButton(
                                                                text:
                                                                    "lbl_with_photo"
                                                                        .tr,
                                                                value:
                                                                    withPhoto,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top: 2
                                                                            .v),
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        vertical: 2
                                                                            .v),
                                                                onChange:
                                                                    (value) {
                                                                  withPhoto =
                                                                      value;
                                                                })
                                                          ])),
                                                      SizedBox(height: 28.v),
                                                      SizedBox(
                                                          height: 70.v,
                                                          width: 113.h,
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomRight,
                                                                    child: Container(
                                                                        decoration: AppDecoration.outlineBlack9004.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                                                                        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                          Padding(
                                                                              padding: EdgeInsets.only(left: 1.h),
                                                                              child: Text("lbl_kim_shine".tr, style: CustomTextStyles.titleSmallSemiBold)),
                                                                          SizedBox(
                                                                              height: 6.v),
                                                                          Container(
                                                                              height: 14.v,
                                                                              width: 74.h,
                                                                              child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, tabs: [
                                                                                Tab(child: CustomImageView(svgPath: ImageConstant.imgStarOrange300, height: 14.adaptSize, width: 14.adaptSize)),
                                                                                Tab(child: CustomImageView(svgPath: ImageConstant.imgStarOrange300, height: 14.adaptSize, width: 14.adaptSize)),
                                                                                Tab(child: CustomImageView(svgPath: ImageConstant.imgStarOrange300, height: 14.adaptSize, width: 14.adaptSize)),
                                                                                Tab(child: CustomImageView(svgPath: ImageConstant.imgStarOrange300, height: 14.adaptSize, width: 14.adaptSize)),
                                                                                Tab(child: CustomImageView(svgPath: ImageConstant.imgStar, height: 14.adaptSize, width: 14.adaptSize))
                                                                              ]))
                                                                        ]))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    child: SizedBox(
                                                                        height: 32.adaptSize,
                                                                        width: 32.adaptSize,
                                                                        child: Stack(alignment: Alignment.center, children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgImage32x32,
                                                                              height: 32.adaptSize,
                                                                              width: 32.adaptSize,
                                                                              radius: BorderRadius.circular(16.h),
                                                                              alignment: Alignment.center),
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgImage21,
                                                                              height: 32.adaptSize,
                                                                              width: 32.adaptSize,
                                                                              radius: BorderRadius.circular(16.h),
                                                                              alignment: Alignment.center)
                                                                        ])))
                                                              ]))
                                                    ]))),
                                        Container(
                                            margin: EdgeInsets.only(top: 122.v),
                                            height: 537.v,
                                            child: TabBarView(
                                                controller: tabviewController,
                                                children: [
                                                  RatingAndReviewsWithPhotoPage(),
                                                  RatingAndReviewsWithPhotoPage(),
                                                  RatingAndReviewsWithPhotoPage(),
                                                  RatingAndReviewsWithPhotoPage(),
                                                  RatingAndReviewsWithPhotoPage()
                                                ]))
                                      ])))))
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
