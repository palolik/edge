import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/custom_icon_button.dart';
import 'package:ecommerce_user/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Productcardlist1ItemWidget extends StatelessWidget {
  const Productcardlist1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 116.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 12.v),
              decoration: AppDecoration.fillOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 104.adaptSize,
                    width: 104.adaptSize,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage16,
                          height: 104.adaptSize,
                          width: 104.adaptSize,
                          radius: BorderRadius.horizontal(
                            left: Radius.circular(8.h),
                          ),
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage17,
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
                    padding: EdgeInsets.symmetric(vertical: 14.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_lime".tr,
                          style: CustomTextStyles.bodySmall11_3,
                        ),
                        SizedBox(height: 2.v),
                        Text(
                          "lbl_shirt".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 6.v),
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
                                    text: "lbl_blue".tr,
                                    style:
                                        CustomTextStyles.bodySmallGray90011_1,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 25.h),
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
                                      style:
                                          CustomTextStyles.bodySmallGray90011,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 14.v),
                        Row(
                          children: [
                            Text(
                              "lbl_32".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            CustomRatingBar(
                              margin: EdgeInsets.only(left: 55.h),
                              ignoreGestures: true,
                              initialRating: 0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 2.h,
                                top: 3.v,
                              ),
                              child: Text(
                                "lbl_102".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgIconGray50040x40,
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    margin: EdgeInsets.only(bottom: 64.v),
                  ),
                ],
              ),
            ),
          ),
          CustomIconButton(
            height: 36.adaptSize,
            width: 36.adaptSize,
            padding: EdgeInsets.all(10.h),
            decoration: IconButtonStyleHelper.outlinePrimary,
            alignment: Alignment.bottomRight,
            child: CustomImageView(
              svgPath: ImageConstant.imgShoppingbagiconactivated,
            ),
          ),
        ],
      ),
    );
  }
}
