import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/custom_elevated_button.dart';
import 'package:ecommerce_user/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProductCardSelectSizeBottomsheet extends StatelessWidget {
  const ProductCardSelectSizeBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 14.v),
      decoration: AppDecoration.background.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL34,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 60.h,
            child: Divider(
              color: appTheme.gray500,
            ),
          ),
          SizedBox(height: 16.v),
          Text(
            "lbl_select_size".tr,
            style: CustomTextStyles.titleMedium18_1,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 25.v,
              right: 16.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.h,
                    vertical: 12.v,
                  ),
                  decoration: AppDecoration.outlineGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Text(
                    "lbl_xs".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.h,
                    vertical: 12.v,
                  ),
                  decoration: AppDecoration.outlineGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Text(
                    "lbl_s".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.h,
                    vertical: 12.v,
                  ),
                  decoration: AppDecoration.outlineGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Text(
                    "lbl_m".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 16.v,
              ),
              child: Row(
                children: [
                  CustomOutlinedButton(
                    width: 100.h,
                    text: "lbl_l".tr,
                  ),
                  CustomOutlinedButton(
                    width: 100.h,
                    text: "lbl_xl".tr,
                    margin: EdgeInsets.only(left: 22.h),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 24.v),
          Opacity(
            opacity: 0.25,
            child: Divider(),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                top: 14.v,
              ),
              child: Text(
                "lbl_size_info".tr,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
          SizedBox(height: 16.v),
          Opacity(
            opacity: 0.25,
            child: Divider(),
          ),
          CustomElevatedButton(
            text: "lbl_add_to_cart".tr,
            margin: EdgeInsets.fromLTRB(16.h, 27.v, 16.h, 30.v),
          ),
        ],
      ),
    );
  }
}
