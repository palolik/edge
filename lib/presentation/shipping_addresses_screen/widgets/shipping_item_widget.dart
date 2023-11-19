import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/custom_checkbox_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShippingItemWidget extends StatelessWidget {
  ShippingItemWidget({Key? key})
      : super(
          key: key,
        );

  bool checkmark = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              top: 2.v,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_jane_doe".tr,
                  style: theme.textTheme.titleSmall,
                ),
                Text(
                  "lbl_edit".tr,
                  style: CustomTextStyles.titleSmallPrimary,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              top: 12.v,
              right: 57.h,
            ),
            child: Text(
              "msg_3_newbridge_court".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium!.copyWith(
                height: 1.50,
              ),
            ),
          ),
          CustomCheckboxButton(
            text: "msg_use_as_the_shipping".tr,
            value: checkmark,
            margin: EdgeInsets.only(
              left: 5.h,
              top: 16.v,
              right: 74.h,
            ),
            padding: EdgeInsets.symmetric(vertical: 2.v),
            onChange: (value) {
              checkmark = value;
            },
          ),
        ],
      ),
    );
  }
}
