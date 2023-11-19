import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductcardbagItemWidget extends StatelessWidget {
  const ProductcardbagItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 104.v,
      width: 346.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(right: 3.h),
              decoration: AppDecoration.outlineBlack900.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Row(
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
                          imagePath: ImageConstant.imgImage7,
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
                      top: 11.v,
                      bottom: 1.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_pullover".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 1.h,
                            top: 4.v,
                          ),
                          child: Row(
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
                                      text: "lbl_black".tr,
                                      style:
                                          CustomTextStyles.bodySmallGray90011_1,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 13.h),
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
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 1.h,
                            top: 14.v,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                height: 36.adaptSize,
                                width: 36.adaptSize,
                                padding: EdgeInsets.all(6.h),
                                decoration:
                                    IconButtonStyleHelper.outlineBlackTL182,
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgIconGray50036x36,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 16.h,
                                  top: 10.v,
                                  bottom: 11.v,
                                ),
                                child: Text(
                                  "lbl_1".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                              CustomIconButton(
                                height: 36.adaptSize,
                                width: 36.adaptSize,
                                margin: EdgeInsets.only(left: 16.h),
                                padding: EdgeInsets.all(6.h),
                                decoration:
                                    IconButtonStyleHelper.outlineBlackTL182,
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgIconGray50040x40,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 80.h,
                                  top: 10.v,
                                  bottom: 11.v,
                                ),
                                child: Text(
                                  "lbl_51".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            svgPath: ImageConstant.imgIcon40x40,
            height: 40.adaptSize,
            width: 40.adaptSize,
            alignment: Alignment.topRight,
          ),
        ],
      ),
    );
  }
}
