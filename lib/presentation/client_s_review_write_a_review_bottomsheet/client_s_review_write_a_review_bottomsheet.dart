import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/custom_elevated_button.dart';
import 'package:ecommerce_user/widgets/custom_icon_button.dart';
import 'package:ecommerce_user/widgets/custom_rating_bar.dart';
import 'package:ecommerce_user/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ClientSReviewWriteAReviewBottomsheet extends StatelessWidget {
  ClientSReviewWriteAReviewBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController reviewinputoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.background.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL34,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 60.h,
            child: Divider(
              color: appTheme.gray500,
            ),
          ),
          SizedBox(height: 18.v),
          Text(
            "msg_what_is_you_rate".tr,
            style: CustomTextStyles.titleMedium18_1,
          ),
          SizedBox(height: 18.v),
          CustomRatingBar(
            initialRating: 0,
            itemSize: 37,
            itemCount: 1,
          ),
          SizedBox(height: 32.v),
          SizedBox(
            width: 227.h,
            child: Text(
              "msg_please_share_your".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMedium18_1.copyWith(
                height: 1.22,
              ),
            ),
          ),
          SizedBox(height: 17.v),
          CustomTextFormField(
            controller: reviewinputoneController,
            hintText: "lbl_your_review".tr,
            hintStyle: CustomTextStyles.bodyMediumGray500,
            textInputAction: TextInputAction.done,
            maxLines: 10,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 15.v,
            ),
          ),
          SizedBox(height: 39.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
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
                      svgPath: ImageConstant.imgBaselinephotocamera24px,
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
          ),
          SizedBox(height: 44.v),
          CustomElevatedButton(
            text: "lbl_send_review".tr,
          ),
          SizedBox(height: 30.v),
        ],
      ),
    );
  }
}
