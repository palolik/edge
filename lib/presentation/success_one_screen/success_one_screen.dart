import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SuccessOneScreen extends StatelessWidget {
  const SuccessOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 70.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgBags,
                height: 210.v,
                width: 217.h,
              ),
              SizedBox(height: 47.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "lbl_success".tr,
                  style: CustomTextStyles.displaySmallBlack900,
                ),
              ),
              Container(
                width: 225.h,
                margin: EdgeInsets.fromLTRB(5.h, 15.v, 5.h, 5.v),
                child: Text(
                  "msg_your_order_will".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumBlack900.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          text: "msg_continue_shopping2".tr,
          margin: EdgeInsets.only(
            left: 18.h,
            right: 14.h,
            bottom: 59.v,
          ),
        ),
      ),
    );
  }
}
