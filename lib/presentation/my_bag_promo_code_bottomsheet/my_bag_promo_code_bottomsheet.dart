import '../my_bag_promo_code_bottomsheet/widgets/my_bagpromo_item_widget.dart';
import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MyBagPromoCodeBottomsheet extends StatelessWidget {
  MyBagPromoCodeBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController promoCodeController = TextEditingController();

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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 60.h,
              child: Divider(
                color: appTheme.gray500,
              ),
            ),
          ),
          SizedBox(height: 32.v),
          CustomTextFormField(
            controller: promoCodeController,
            hintText: "msg_enter_your_promo".tr,
            textInputAction: TextInputAction.done,
            suffix: Container(
              padding: EdgeInsets.all(6.h),
              margin: EdgeInsets.only(left: 12.h),
              decoration: BoxDecoration(
                color: appTheme.gray900,
                borderRadius: BorderRadius.circular(
                  18.h,
                ),
              ),
              child: CustomImageView(
                svgPath: ImageConstant.imgArrowright,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 36.v,
            ),
            contentPadding: EdgeInsets.only(
              left: 20.h,
              top: 11.v,
              bottom: 11.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineBlackLR35,
          ),
          SizedBox(height: 32.v),
          Text(
            "msg_your_promo_codes".tr,
            style: CustomTextStyles.titleMedium18_1,
          ),
          SizedBox(height: 21.v),
          Expanded(
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 24.v,
                );
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return MyBagpromoItemWidget();
              },
            ),
          ),
        ],
      ),
    );
  }
}
