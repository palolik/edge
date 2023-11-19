import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/presentation/rating_and_reviews_page/rating_and_reviews_page.dart';
import 'package:ecommerce_user/widgets/custom_checkbox_button.dart';
import 'package:ecommerce_user/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class RatingAndReviewsTabContainerScreen extends StatefulWidget {
  const RatingAndReviewsTabContainerScreen({Key? key}) : super(key: key);

  @override
  RatingAndReviewsTabContainerScreenState createState() =>
      RatingAndReviewsTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class RatingAndReviewsTabContainerScreenState
    extends State<RatingAndReviewsTabContainerScreen>
    with TickerProviderStateMixin {
  bool withPhoto = false;

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 8.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                        Padding(
                            padding: EdgeInsets.only(left: 8.h, right: 91.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgArrowleft,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      onTap: () {
                                        onTapImgArrowleftone(context);
                                      }),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: 6.h, top: 30.v),
                                      child: Text("lbl_rating_reviews".tr,
                                          style: theme.textTheme.displaySmall))
                                ])),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 15.h, top: 37.v, right: 30.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 36.v),
                                      child: Column(children: [
                                        Text("lbl_4_3".tr,
                                            style:
                                                theme.textTheme.displayMedium),
                                        SizedBox(height: 4.v),
                                        Text("lbl_23_ratings".tr,
                                            style: CustomTextStyles
                                                .bodyMediumGray500_1)
                                      ])),
                                  Expanded(
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 27.h, top: 3.v),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      CustomRatingBar(
                                                          initialRating: 0,
                                                          itemCount: 1),
                                                      Container(
                                                          height: 8.v,
                                                          width: 114.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 10.h,
                                                                  top: 3.v,
                                                                  bottom: 3.v),
                                                          decoration: BoxDecoration(
                                                              color: theme
                                                                  .colorScheme
                                                                  .primary,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4.h))),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 23.h),
                                                          child: Text(
                                                              "lbl_122".tr,
                                                              style: CustomTextStyles
                                                                  .bodyMediumGray800))
                                                    ]),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 15.h, top: 6.v),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgStarOrange300,
                                                              height:
                                                                  14.adaptSize,
                                                              width:
                                                                  14.adaptSize),
                                                          CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgStarOrange300,
                                                              height:
                                                                  14.adaptSize,
                                                              width:
                                                                  14.adaptSize,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          1.h)),
                                                          CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgStarOrange300,
                                                              height:
                                                                  14.adaptSize,
                                                              width:
                                                                  14.adaptSize,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          1.h)),
                                                          CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgStarOrange300,
                                                              height:
                                                                  14.adaptSize,
                                                              width:
                                                                  14.adaptSize,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          2.h)),
                                                          Container(
                                                              height: 8.v,
                                                              width: 40.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left: 9.h,
                                                                      top: 3.v,
                                                                      bottom:
                                                                          3.v),
                                                              decoration: BoxDecoration(
                                                                  color: theme
                                                                      .colorScheme
                                                                      .primary,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4.h))),
                                                          Text("lbl_5".tr,
                                                              style: CustomTextStyles
                                                                  .bodyMediumGray800)
                                                        ])),
                                                SizedBox(height: 6.v),
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      CustomRatingBar(
                                                          initialRating: 0,
                                                          itemCount: 3),
                                                      Container(
                                                          height: 8.v,
                                                          width: 29.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 9.h,
                                                                  top: 3.v,
                                                                  bottom: 3.v),
                                                          decoration: BoxDecoration(
                                                              color: theme
                                                                  .colorScheme
                                                                  .primary,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4.h))),
                                                      Text("lbl_4".tr,
                                                          style: CustomTextStyles
                                                              .bodyMediumGray800)
                                                    ]),
                                                SizedBox(height: 6.v),
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgStarOrange300,
                                                          height: 14.adaptSize,
                                                          width: 14.adaptSize),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgStarOrange300,
                                                          height: 14.adaptSize,
                                                          width: 14.adaptSize,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 2.h)),
                                                      Container(
                                                          height: 8.v,
                                                          width: 15.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 9.h,
                                                                  top: 3.v,
                                                                  bottom: 3.v),
                                                          decoration: BoxDecoration(
                                                              color: theme
                                                                  .colorScheme
                                                                  .primary,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4.h))),
                                                      Text("lbl_2".tr,
                                                          style: CustomTextStyles
                                                              .bodyMediumGray800)
                                                    ]),
                                                SizedBox(height: 7.v),
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgStarOrange300,
                                                          height: 14.adaptSize,
                                                          width: 14.adaptSize),
                                                      Container(
                                                          height: 8.adaptSize,
                                                          width: 8.adaptSize,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 10.h,
                                                                  top: 3.v,
                                                                  bottom: 3.v),
                                                          decoration: BoxDecoration(
                                                              color: theme
                                                                  .colorScheme
                                                                  .primary,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4.h))),
                                                      Text("lbl_02".tr,
                                                          style: CustomTextStyles
                                                              .bodyMediumGray800)
                                                    ])
                                              ])))
                                ])),
                        SizedBox(height: 31.v),
                        SizedBox(
                            height: 503.v,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 16.h),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 1.h),
                                                    child: Row(children: [
                                                      Text("lbl_8_reviews".tr,
                                                          style: CustomTextStyles
                                                              .headlineSmallGray900),
                                                      CustomCheckboxButton(
                                                          text: "lbl_with_photo"
                                                              .tr,
                                                          value: withPhoto,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  bottom: 2.v),
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  vertical:
                                                                      1.v),
                                                          onChange: (value) {
                                                            withPhoto = value;
                                                          })
                                                    ])),
                                                SizedBox(height: 28.v),
                                                SizedBox(
                                                    height: 70.v,
                                                    width: 136.h,
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              child: Container(
                                                                  decoration: AppDecoration
                                                                      .outlineBlack9004
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder8),
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(left: 1.h),
                                                                            child: Text("lbl_helene_moore".tr, style: CustomTextStyles.titleSmallSemiBold)),
                                                                        SizedBox(
                                                                            height:
                                                                                6.v),
                                                                        Container(
                                                                            height:
                                                                                14.v,
                                                                            width: 74.h,
                                                                            child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, tabs: [
                                                                              Tab(child: CustomImageView(svgPath: ImageConstant.imgStarOrange300, height: 14.adaptSize, width: 14.adaptSize)),
                                                                              Tab(child: CustomImageView(svgPath: ImageConstant.imgStarOrange300, height: 14.adaptSize, width: 14.adaptSize)),
                                                                              Tab(child: CustomImageView(svgPath: ImageConstant.imgStarOrange300, height: 14.adaptSize, width: 14.adaptSize)),
                                                                              Tab(child: CustomImageView(svgPath: ImageConstant.imgStarOrange300, height: 14.adaptSize, width: 14.adaptSize)),
                                                                              Tab(child: CustomImageView(svgPath: ImageConstant.imgStar, height: 14.adaptSize, width: 14.adaptSize))
                                                                            ]))
                                                                      ]))),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgBag,
                                                              height:
                                                                  32.adaptSize,
                                                              width:
                                                                  32.adaptSize,
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft)
                                                        ]))
                                              ]))),
                                  Container(
                                      margin: EdgeInsets.only(top: 122.v),
                                      height: 381.v,
                                      child: TabBarView(
                                          controller: tabviewController,
                                          children: [
                                            RatingAndReviewsPage(),
                                            RatingAndReviewsPage(),
                                            RatingAndReviewsPage(),
                                            RatingAndReviewsPage(),
                                            RatingAndReviewsPage()
                                          ]))
                                ]))
                      ])))
                ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
