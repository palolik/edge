import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/custom_elevated_button.dart';
import 'package:ecommerce_user/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RatingAndReviewsWithPhotoPage extends StatefulWidget {
  const RatingAndReviewsWithPhotoPage({Key? key})
      : super(
          key: key,
        );

  @override
  RatingAndReviewsWithPhotoPageState createState() =>
      RatingAndReviewsWithPhotoPageState();
}

class RatingAndReviewsWithPhotoPageState
    extends State<RatingAndReviewsWithPhotoPage>
    with AutomaticKeepAliveClientMixin<RatingAndReviewsWithPhotoPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 122.v),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 50.h),
                        child: Text(
                          "lbl_august_13_2019".tr,
                          style: CustomTextStyles.bodySmall11,
                        ),
                      ),
                      SizedBox(height: 11.v),
                      Align(
                        alignment: Alignment.center,
                        child: Opacity(
                          opacity: 0.8,
                          child: SizedBox(
                            width: 260.h,
                            child: Text(
                              "msg_i_loved_this_dress".tr,
                              maxLines: 6,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  CustomTextStyles.bodyMediumGray900.copyWith(
                                height: 1.50,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(
                          left: 56.h,
                          top: 13.v,
                          right: 32.h,
                        ),
                        child: IntrinsicWidth(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage2104x104,
                                height: 104.adaptSize,
                                width: 104.adaptSize,
                                radius: BorderRadius.circular(
                                  4.h,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage12,
                                height: 104.adaptSize,
                                width: 104.adaptSize,
                                radius: BorderRadius.circular(
                                  4.h,
                                ),
                                margin: EdgeInsets.only(left: 16.h),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage13,
                                height: 104.adaptSize,
                                width: 104.adaptSize,
                                radius: BorderRadius.circular(
                                  4.h,
                                ),
                                margin: EdgeInsets.only(left: 16.h),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 10.v,
                          right: 42.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 10.v,
                                bottom: 1.v,
                              ),
                              child: Text(
                                "lbl_helpful".tr,
                                style: CustomTextStyles.bodySmall11,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgIconGray500,
                              height: 22.v,
                              width: 24.h,
                              margin: EdgeInsets.only(left: 3.h),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 368.v,
                          width: 327.h,
                          margin: EdgeInsets.only(
                            left: 16.h,
                            top: 31.v,
                          ),
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  margin: EdgeInsets.only(left: 16.h),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10.h,
                                    vertical: 9.v,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlack9004.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            left: 14.h,
                                            top: 10.v,
                                          ),
                                          child: Text(
                                            "lbl_matilda_brown".tr,
                                            style: CustomTextStyles
                                                .titleSmallSemiBold,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 13.h,
                                          top: 6.v,
                                          right: 9.h,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomRatingBar(
                                              margin:
                                                  EdgeInsets.only(bottom: 1.v),
                                              initialRating: 0,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(top: 4.v),
                                              child: Text(
                                                "lbl_august_14_2019".tr,
                                                style: CustomTextStyles
                                                    .bodySmall11,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Opacity(
                                        opacity: 0.8,
                                        child: Container(
                                          width: 260.h,
                                          margin: EdgeInsets.only(
                                            left: 14.h,
                                            top: 12.v,
                                            right: 17.h,
                                          ),
                                          child: Text(
                                            "msg_i_loved_this_dress".tr,
                                            maxLines: 6,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodyMediumGray900
                                                .copyWith(
                                              height: 1.50,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 130.v),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(top: 8.v),
                                              child: Text(
                                                "lbl_helpful".tr,
                                                style: CustomTextStyles
                                                    .bodySmall11,
                                              ),
                                            ),
                                            CustomImageView(
                                              svgPath: ImageConstant.imgVolume,
                                              height: 13.adaptSize,
                                              width: 13.adaptSize,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: SizedBox(
                                  height: 32.adaptSize,
                                  width: 32.adaptSize,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImage32x32,
                                        height: 32.adaptSize,
                                        width: 32.adaptSize,
                                        radius: BorderRadius.circular(
                                          16.h,
                                        ),
                                        alignment: Alignment.center,
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImage232x32,
                                        height: 32.adaptSize,
                                        width: 32.adaptSize,
                                        radius: BorderRadius.circular(
                                          16.h,
                                        ),
                                        alignment: Alignment.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                          horizontal: 17.h,
                          vertical: 10.v,
                        ),
                        decoration: AppDecoration.gradientOnPrimaryToOnPrimary,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 79.v),
                            CustomElevatedButton(
                              height: 36.v,
                              width: 128.h,
                              text: "lbl_write_a_review".tr,
                              leftIcon: Container(
                                margin: EdgeInsets.only(right: 4.h),
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgIconOnprimary,
                                ),
                              ),
                              buttonStyle: CustomButtonStyles.outlineRedFTL18,
                              buttonTextStyle: theme.textTheme.labelMedium!,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
