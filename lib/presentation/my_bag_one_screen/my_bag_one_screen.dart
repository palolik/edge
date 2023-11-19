import '../my_bag_one_screen/widgets/productcardbag1_item_widget.dart';
import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/presentation/catalog_one_page/catalog_one_page.dart';
import 'package:ecommerce_user/presentation/favorites_lists_page/favorites_lists_page.dart';
import 'package:ecommerce_user/presentation/main_page/main_page.dart';
import 'package:ecommerce_user/presentation/my_bag_page/my_bag_page.dart';
import 'package:ecommerce_user/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';
import 'package:ecommerce_user/widgets/custom_bottom_bar.dart';
import 'package:ecommerce_user/widgets/custom_elevated_button.dart';
import 'package:ecommerce_user/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class MyBagOneScreen extends StatelessWidget {
  MyBagOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController promoCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 8.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgBaselinesearch24pxGray900,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.centerRight,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 3.h,
                  top: 31.v,
                ),
                child: Text(
                  "lbl_my_bag".tr,
                  style: theme.textTheme.displaySmall,
                ),
              ),
              Container(
                height: 377.v,
                width: 346.h,
                margin: EdgeInsets.only(
                  left: 5.h,
                  top: 7.v,
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(top: 17.v),
                        child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (
                            context,
                            index,
                          ) {
                            return SizedBox(
                              height: 24.v,
                            );
                          },
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Productcardbag1ItemWidget();
                          },
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: EdgeInsets.only(right: 36.h),
                        padding: EdgeInsets.symmetric(vertical: 19.v),
                        decoration: AppDecoration.outlineBlack9004.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "msg_add_to_favorites2".tr,
                              style: CustomTextStyles.bodySmallGray900,
                            ),
                            SizedBox(height: 17.v),
                            Opacity(
                              opacity: 0.1,
                              child: SizedBox(
                                width: 170.h,
                                child: Divider(
                                  color: appTheme.gray500.withOpacity(0.39),
                                ),
                              ),
                            ),
                            SizedBox(height: 16.v),
                            Text(
                              "msg_delete_from_the".tr,
                              style: CustomTextStyles.bodySmallGray900,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomTextFormField(
                controller: promoCodeController,
                margin: EdgeInsets.only(
                  left: 5.h,
                  top: 25.v,
                  right: 5.h,
                ),
                hintText: "lbl_mypromocode2020".tr,
                textInputAction: TextInputAction.done,
                suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 6.v, 5.h, 6.v),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgIconGray50040x40,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 36.v,
                ),
                contentPadding: EdgeInsets.only(
                  left: 20.h,
                  top: 11.v,
                  bottom: 11.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.outlineBlackTL8,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 5.h,
                  top: 28.v,
                  right: 4.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 1.v,
                        bottom: 2.v,
                      ),
                      child: Text(
                        "lbl_total_amount".tr,
                        style: CustomTextStyles.titleSmallGray500,
                      ),
                    ),
                    Text(
                      "lbl_112".tr,
                      style: CustomTextStyles.titleMedium18_1,
                    ),
                  ],
                ),
              ),
              CustomElevatedButton(
                text: "lbl_check_out".tr,
                margin: EdgeInsets.fromLTRB(5.h, 27.v, 5.h, 5.v),
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
