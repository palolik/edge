import '../main_page/widgets/productcard_item_widget.dart';
import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MainPage extends StatelessWidget {
  const MainPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          decoration: AppDecoration.background,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 492.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage362x375,
                        height: 362.v,
                        width: 375.h,
                        alignment: Alignment.topCenter,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 492.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage492x375,
                                height: 492.v,
                                width: 375.h,
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10.h,
                                    vertical: 32.v,
                                  ),
                                  decoration:
                                      AppDecoration.gradientBlackToBlack,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: 190.h,
                                        margin: EdgeInsets.only(
                                          left: 5.h,
                                          top: 206.v,
                                        ),
                                        child: Text(
                                          "lbl_fashion_sale".tr,
                                          maxLines: null,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .displayMediumOnPrimary,
                                        ),
                                      ),
                                      SizedBox(height: 18.v),
                                      CustomElevatedButton(
                                        height: 36.v,
                                        width: 160.h,
                                        text: "lbl_check".tr,
                                        buttonStyle:
                                            CustomButtonStyles.outlineRedFTL18,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 31.v,
                      right: 13.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_new".tr,
                          style: theme.textTheme.displaySmall,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20.v,
                            bottom: 2.v,
                          ),
                          child: Text(
                            "lbl_view_all".tr,
                            style: CustomTextStyles.bodySmallGray900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 14.h,
                    top: 5.v,
                  ),
                  child: Text(
                    "msg_you_ve_never_seen".tr,
                    style: CustomTextStyles.bodySmall11,
                  ),
                ),
                SizedBox(
                  height: 288.v,
                  child: ListView.separated(
                    padding: EdgeInsets.only(
                      left: 14.h,
                      top: 22.v,
                    ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        width: 17.h,
                      );
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ProductcardItemWidget();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
