import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RatingAndReviewsPage extends StatefulWidget {
  const RatingAndReviewsPage({Key? key})
      : super(
          key: key,
        );

  @override
  RatingAndReviewsPageState createState() => RatingAndReviewsPageState();
}

class RatingAndReviewsPageState extends State<RatingAndReviewsPage>
    with AutomaticKeepAliveClientMixin<RatingAndReviewsPage> {
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
                        padding: EdgeInsets.only(right: 52.h),
                        child: Text(
                          "lbl_june_5_2019".tr,
                          style: CustomTextStyles.bodySmall11,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Opacity(
                          opacity: 0.8,
                          child: Container(
                            width: 267.h,
                            margin: EdgeInsets.only(
                              left: 56.h,
                              top: 12.v,
                              right: 52.h,
                            ),
                            child: Text(
                              "msg_the_dress_is_great".tr,
                              maxLines: 9,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  CustomTextStyles.bodyMediumGray900.copyWith(
                                height: 1.50,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 8.v,
                          right: 42.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10.v),
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
                            SizedBox(height: 65.v),
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 340.v,
                          width: 327.h,
                          margin: EdgeInsets.only(left: 16.h),
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  margin: EdgeInsets.only(left: 16.h),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10.h,
                                    vertical: 19.v,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlack9003.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 14.h),
                                          child: Text(
                                            "lbl_kate_doe".tr,
                                            style: CustomTextStyles
                                                .titleSmallSemiBold,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 13.h,
                                          top: 5.v,
                                          right: 10.h,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 74.h,
                                              margin:
                                                  EdgeInsets.only(bottom: 1.v),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgStarOrange300,
                                                    height: 14.adaptSize,
                                                    width: 14.adaptSize,
                                                  ),
                                                  CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgStarOrange300,
                                                    height: 14.adaptSize,
                                                    width: 14.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        left: 1.h),
                                                  ),
                                                  CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgStarOrange300,
                                                    height: 14.adaptSize,
                                                    width: 14.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        left: 1.h),
                                                  ),
                                                  CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgStarOrange300,
                                                    height: 14.adaptSize,
                                                    width: 14.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        left: 1.h),
                                                  ),
                                                  CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgStar,
                                                    height: 14.adaptSize,
                                                    width: 14.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        left: 1.h),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(top: 4.v),
                                              child: Text(
                                                "lbl_june_5_2019".tr,
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
                                          width: 267.h,
                                          margin: EdgeInsets.only(
                                            left: 14.h,
                                            top: 12.v,
                                            right: 10.h,
                                          ),
                                          child: Text(
                                            "msg_the_dress_is_great2".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodyMediumGray900
                                                .copyWith(
                                              height: 1.50,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 176.v),
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
                              CustomImageView(
                                imagePath: ImageConstant.imgBag,
                                height: 32.adaptSize,
                                width: 32.adaptSize,
                                alignment: Alignment.topLeft,
                              ),
                            ],
                          ),
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
