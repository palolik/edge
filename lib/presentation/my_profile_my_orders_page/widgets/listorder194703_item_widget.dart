import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listorder194703ItemWidget extends StatelessWidget {
  const Listorder194703ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.outlineBlack9006.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              right: 3.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_order_1947034".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  "lbl_05_12_2019".tr,
                  style: CustomTextStyles.bodyMediumGray500_1,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              top: 17.v,
              right: 77.h,
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "msg_tracking_number".tr,
                    style: CustomTextStyles.bodyMediumGray500_1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Text(
                    "lbl_iw3475453455".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              top: 7.v,
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text(
                    "lbl_quantity".tr,
                    style: CustomTextStyles.bodyMediumGray500_1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Text(
                    "lbl_33".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Spacer(),
                Text(
                  "lbl_total_amount2".tr,
                  style: CustomTextStyles.bodyMediumGray500_1,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Text(
                    "lbl_112".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              top: 17.v,
              right: 3.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomOutlinedButton(
                  height: 36.v,
                  width: 98.h,
                  text: "lbl_details".tr,
                  buttonStyle: CustomButtonStyles.outlineGray,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10.v,
                    bottom: 11.v,
                  ),
                  child: Text(
                    "lbl_delivered".tr,
                    style: CustomTextStyles.titleSmallGreen600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
