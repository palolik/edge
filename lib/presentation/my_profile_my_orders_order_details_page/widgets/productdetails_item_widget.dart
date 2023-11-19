import 'package:ecommerce_user/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductdetailsItemWidget extends StatelessWidget {
  const ProductdetailsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 104.adaptSize,
            width: 104.adaptSize,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage104x104,
                  height: 104.adaptSize,
                  width: 104.adaptSize,
                  radius: BorderRadius.horizontal(
                    left: Radius.circular(8.h),
                  ),
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage6,
                  height: 104.adaptSize,
                  width: 104.adaptSize,
                  radius: BorderRadius.horizontal(
                    left: Radius.circular(8.h),
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 10.v,
              bottom: 17.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_pullover".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 5.v),
                Text(
                  "lbl_mango".tr,
                  style: CustomTextStyles.bodySmall11_3,
                ),
                SizedBox(height: 7.v),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_color".tr,
                            style: CustomTextStyles.bodySmall11_2,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "lbl_gray".tr,
                            style: CustomTextStyles.bodySmallGray90011_1,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_size2".tr,
                              style: CustomTextStyles.bodySmall11_1,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "lbl_l".tr,
                              style: CustomTextStyles.bodySmallGray90011,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 9.v),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 2.v),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_units".tr,
                              style: CustomTextStyles.bodySmall11_2,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "lbl_1".tr,
                              style: CustomTextStyles.bodySmallGray90011_1,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Text(
                      "lbl_51".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
