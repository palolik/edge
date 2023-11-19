import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/custom_elevated_button.dart';
import 'package:ecommerce_user/widgets/custom_icon_button.dart';
import 'package:ecommerce_user/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ClientSReviewPage extends StatefulWidget {
  const ClientSReviewPage({Key? key})
      : super(
          key: key,
        );

  @override
  ClientSReviewPageState createState() => ClientSReviewPageState();
}

class ClientSReviewPageState extends State<ClientSReviewPage>
    with AutomaticKeepAliveClientMixin<ClientSReviewPage> {
  TextEditingController descriptionController = TextEditingController();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 33.v,
                    right: 15.h,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 227.h,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "msg_please_share_your2".tr,
                                style: CustomTextStyles.titleMediumBlack90018,
                              ),
                              TextSpan(
                                text: "msg_about_the_product".tr,
                                style: CustomTextStyles.titleMedium18,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 17.v),
                      CustomTextFormField(
                        controller: descriptionController,
                        hintText: "msg_i_m_super_happy".tr,
                        hintStyle: CustomTextStyles.bodyMediumGray900,
                        textInputAction: TextInputAction.done,
                        maxLines: 6,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 18.h,
                          vertical: 14.v,
                        ),
                      ),
                      SizedBox(height: 39.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 104.adaptSize,
                                width: 104.adaptSize,
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage14,
                                      height: 104.adaptSize,
                                      width: 104.adaptSize,
                                      radius: BorderRadius.circular(
                                        4.h,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgIconGray900,
                                      height: 32.v,
                                      width: 33.h,
                                      alignment: Alignment.topRight,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 104.adaptSize,
                                width: 104.adaptSize,
                                margin: EdgeInsets.only(left: 16.h),
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage15,
                                      height: 104.adaptSize,
                                      width: 104.adaptSize,
                                      radius: BorderRadius.circular(
                                        4.h,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgIconGray900,
                                      height: 32.v,
                                      width: 33.h,
                                      alignment: Alignment.topRight,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 6.h,
                              vertical: 15.v,
                            ),
                            decoration: AppDecoration.outlineBlack9003.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomIconButton(
                                  height: 52.adaptSize,
                                  width: 52.adaptSize,
                                  padding: EdgeInsets.all(13.h),
                                  decoration: IconButtonStyleHelper.fillPrimary,
                                  child: CustomImageView(
                                    svgPath: ImageConstant
                                        .imgBaselinephotocamera24px,
                                  ),
                                ),
                                SizedBox(height: 10.v),
                                Text(
                                  "lbl_add_your_photos".tr,
                                  style: CustomTextStyles.labelMediumGray900,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 44.v),
                      CustomElevatedButton(
                        text: "lbl_send_review".tr,
                      ),
                    ],
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
