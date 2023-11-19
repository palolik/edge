import 'package:ecommerce_user/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SortByBottomsheet extends StatelessWidget {
  const SortByBottomsheet({Key? key})
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 60.h,
              child: Divider(
                color: appTheme.gray500,
              ),
            ),
          ),
          SizedBox(height: 18.v),
          Align(
            alignment: Alignment.center,
            child: Text(
              "lbl_sort_by".tr,
              style: CustomTextStyles.titleMedium18_1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 35.v,
            ),
            child: Text(
              "lbl_popular".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 30.v,
            ),
            child: Text(
              "lbl_newest".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 31.v,
            ),
            child: Text(
              "lbl_customer_review".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(height: 17.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 15.v,
            ),
            decoration: AppDecoration.fillPrimary,
            child: Text(
              "msg_price_lowest_to".tr,
              style: CustomTextStyles.titleMediumOnPrimary,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 15.v,
              bottom: 38.v,
            ),
            child: Text(
              "msg_price_highest_to".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
