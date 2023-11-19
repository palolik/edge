import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyBagpromoItemWidget extends StatelessWidget {
  const MyBagpromoItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack9006.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          Container(
            width: 80.h,
            padding: EdgeInsets.symmetric(
              horizontal: 9.h,
              vertical: 21.v,
            ),
            decoration: AppDecoration.gradientRedToRedA.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 3.v),
                  child: Text(
                    "lbl_103".tr,
                    style: CustomTextStyles.displaySmallOnPrimary_1,
                  ),
                ),
                Container(
                  height: 27.v,
                  width: 20.h,
                  margin: EdgeInsets.only(
                    left: 1.h,
                    top: 2.v,
                    bottom: 6.v,
                  ),
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "lbl_off".tr,
                          style: CustomTextStyles.titleSmallOnPrimaryBold,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "lbl".tr,
                          style: CustomTextStyles.titleSmallOnPrimaryBold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 23.v,
              bottom: 23.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_personal_offer".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 8.v),
                Text(
                  "lbl_mypromocode2020".tr,
                  style: CustomTextStyles.bodySmallGray900,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 36.h,
              top: 11.v,
              bottom: 11.v,
            ),
            child: Column(
              children: [
                Text(
                  "msg_6_days_remaining".tr,
                  style: CustomTextStyles.bodySmall11,
                ),
                SizedBox(height: 9.v),
                CustomElevatedButton(
                  height: 36.v,
                  width: 93.h,
                  text: "lbl_apply".tr,
                  buttonStyle: CustomButtonStyles.outlineRedFTL18,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
