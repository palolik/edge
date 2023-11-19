import '../my_bag_page/widgets/productcardbag_item_widget.dart';
import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/custom_elevated_button.dart';
import 'package:ecommerce_user/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MyBagPage extends StatelessWidget {
  MyBagPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController promoCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.background,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgBaselinesearch24pxGray900,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.centerRight,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.h,
                    top: 31.v,
                  ),
                  child: Text(
                    "lbl_my_bag".tr,
                    style: theme.textTheme.displaySmall,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 5.h,
                      top: 24.v,
                      right: 2.h,
                    ),
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
                        return ProductcardbagItemWidget();
                      },
                    ),
                  ),
                ),
                CustomTextFormField(
                  controller: promoCodeController,
                  margin: EdgeInsets.only(
                    left: 5.h,
                    top: 25.v,
                    right: 5.h,
                  ),
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
                Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    top: 28.v,
                    right: 4.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 1.v,
                          bottom: 2.v,
                        ),
                        child: Text(
                          "lbl_total_amount".tr,
                          style: CustomTextStyles.titleSmallGray500,
                        ),
                      ),
                      Text(
                        "lbl_124".tr,
                        style: CustomTextStyles.titleMedium18_1,
                      ),
                    ],
                  ),
                ),
                CustomElevatedButton(
                  text: "lbl_check_out".tr,
                  margin: EdgeInsets.fromLTRB(5.h, 27.v, 5.h, 5.v),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
