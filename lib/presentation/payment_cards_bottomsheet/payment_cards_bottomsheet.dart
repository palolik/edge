import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/custom_checkbox_button.dart';
import 'package:ecommerce_user/widgets/custom_elevated_button.dart';
import 'package:ecommerce_user/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PaymentCardsBottomsheet extends StatelessWidget {
  PaymentCardsBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  bool paymentMethodNa = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 15.v,
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
          SizedBox(height: 26.v),
          Text(
            "lbl_add_new_card".tr,
            style: CustomTextStyles.titleMedium18_1,
          ),
          SizedBox(height: 21.v),
          CustomTextFormField(
            controller: nameController,
            hintText: "lbl_name_on_card".tr,
            textInputAction: TextInputAction.done,
          ),
          SizedBox(height: 20.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.outlineBlack9005.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 5.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_card_number".tr,
                        style: CustomTextStyles.bodySmall11,
                      ),
                      SizedBox(height: 6.v),
                      Text(
                        "msg_5546_8205_3693_3947".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgMastercard,
                  height: 25.v,
                  width: 32.h,
                  margin: EdgeInsets.only(
                    top: 9.v,
                    bottom: 2.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Container(
            width: 343.h,
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 14.v,
            ),
            decoration: AppDecoration.outlineBlack9005.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_expire_date".tr,
                  style: CustomTextStyles.bodySmall11,
                ),
                SizedBox(height: 5.v),
                Text(
                  "lbl_05_23".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 4.v),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.outlineBlack9005.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_cvv".tr,
                  style: CustomTextStyles.bodySmall11,
                ),
                SizedBox(height: 5.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 6.v),
                      child: Text(
                        "lbl_567".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgQuestion,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 30.v),
          Align(
            alignment: Alignment.centerLeft,
            child: CustomCheckboxButton(
              alignment: Alignment.centerLeft,
              text: "msg_set_as_default_payment".tr,
              value: paymentMethodNa,
              padding: EdgeInsets.symmetric(vertical: 2.v),
              onChange: (value) {
                paymentMethodNa = value;
              },
            ),
          ),
          SizedBox(height: 22.v),
          CustomElevatedButton(
            text: "lbl_add_card".tr,
          ),
          SizedBox(height: 34.v),
        ],
      ),
    );
  }
}
