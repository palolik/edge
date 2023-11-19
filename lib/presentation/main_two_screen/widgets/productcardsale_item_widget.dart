import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/custom_icon_button.dart';
import 'package:ecommerce_user/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductcardsaleItemWidget extends StatelessWidget {
  const ProductcardsaleItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 149.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 3.v),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 205.v,
              width: 149.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      height: 184.v,
                      width: 148.h,
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage2184x148,
                            height: 184.v,
                            width: 148.h,
                            radius: BorderRadius.circular(
                              8.h,
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.only(
                                left: 9.h,
                                top: 8.v,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 5.h,
                                vertical: 6.v,
                              ),
                              decoration: AppDecoration.fillPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder12,
                              ),
                              child: Text(
                                "lbl_20".tr,
                                style: theme.textTheme.labelMedium,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      children: [
                        CustomRatingBar(
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
                  ),
                  CustomIconButton(
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.all(6.h),
                    alignment: Alignment.bottomRight,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgIcon,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 1.h,
                top: 6.v,
              ),
              child: Text(
                "lbl_dorothy_perkins".tr,
                style: CustomTextStyles.bodySmall11,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 1.h,
                top: 4.v,
              ),
              child: Text(
                "lbl_evening_dress".tr,
                style: theme.textTheme.titleMedium,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 1.h,
                top: 4.v,
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: 14.v,
                    width: 23.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 1.v,
                            width: 23.h,
                            decoration: BoxDecoration(
                              color: appTheme.gray500,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_15".tr,
                            style: CustomTextStyles.titleSmallGray500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "lbl_12".tr,
                      style: CustomTextStyles.titleSmallPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
