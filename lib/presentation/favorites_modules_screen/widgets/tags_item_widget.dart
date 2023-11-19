import 'package:ecommerce_user/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TagsItemWidget extends StatelessWidget {
  const TagsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.h,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 7.v,
          ),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder16,
          ),
          child: Text(
            "lbl_summer".tr,
            style: CustomTextStyles.titleSmallOnPrimary_1,
          ),
        ),
      ),
    );
  }
}
