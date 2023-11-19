import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Productcard1ItemWidget extends StatelessWidget {
  const Productcard1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 149.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.v),
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
                            imagePath: ImageConstant.imgImage5,
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
                                left: 8.h,
                                top: 8.v,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 5.h,
                                vertical: 6.v,
                              ),
                              decoration: AppDecoration.fillGray.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder12,
                              ),
                              child: Text(
                                "lbl_new2".tr,
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
                        CustomImageView(
                          svgPath: ImageConstant.imgStar,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgStar,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          margin: EdgeInsets.only(left: 1.h),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgStar,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          margin: EdgeInsets.only(left: 1.h),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgStar,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          margin: EdgeInsets.only(left: 1.h),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgStar,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          margin: EdgeInsets.only(left: 1.h),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 3.h,
                            top: 4.v,
                          ),
                          child: Text(
                            "lbl_0".tr,
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
            SizedBox(height: 6.v),
            Text(
              "lbl_ovs".tr,
              style: CustomTextStyles.bodySmall11,
            ),
            SizedBox(height: 5.v),
            Text(
              "lbl_blouse".tr,
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 2.v),
            Text(
              "lbl_30".tr,
              style: theme.textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
