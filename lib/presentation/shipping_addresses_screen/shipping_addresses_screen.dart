import '../shipping_addresses_screen/widgets/shipping_item_widget.dart';
import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_image.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_subtitle.dart';
import 'package:ecommerce_user/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_user/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

class ShippingAddressesScreen extends StatelessWidget {
  const ShippingAddressesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
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
                                title: AppbarSubtitle(
                                    text: "msg_shipping_addresses".tr))
                          ])),
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 36.v),
                          child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: 24.v);
                              },
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return ShippingItemWidget();
                              })))
                ])),
            floatingActionButton: CustomFloatingButton(
                height: 36,
                width: 36,
                backgroundColor: appTheme.gray900,
                child: CustomImageView(
                    svgPath: ImageConstant.imgGrid,
                    height: 18.0.v,
                    width: 18.0.h))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
