import 'package:ecommerce_user/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListsummersalesItemWidget extends StatelessWidget {
  const ListsummersalesItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 76.h,
        vertical: 25.v,
      ),
      decoration: AppDecoration.outlineBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Text(
            "lbl_summer_sales".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 6.v),
          Text(
            "lbl_up_to_50_off".tr,
            style: CustomTextStyles.titleSmallOnPrimary_1,
          ),
        ],
      ),
    );
  }
}
