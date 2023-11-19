import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/custom_icon_button.dart';
import 'package:ecommerce_user/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Productcard2ItemWidget extends StatelessWidget {
  const Productcard2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 205.v,
          width: 162.h,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage184x162,
                height: 184.v,
                width: 162.h,
                radius: BorderRadius.circular(
                  8.h,
                ),
                alignment: Alignment.topCenter,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  children: [
                    CustomRatingBar(
                      ignoreGestures: true,
                      initialRating: 0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 2.h,
                        top: 3.v,
                      ),
                      child: Text(
                        "lbl_3".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ),
              CustomIconButton(
                height: 36.adaptSize,
                width: 36.adaptSize,
                margin: EdgeInsets.only(bottom: 5.v),
                padding: EdgeInsets.all(6.h),
                alignment: Alignment.bottomRight,
                child: CustomImageView(
                  svgPath: ImageConstant.imgIcon,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 6.v),
        Text(
          "lbl_mango".tr,
          style: CustomTextStyles.bodySmall11,
        ),
        SizedBox(height: 3.v),
        Text(
          "lbl_t_shirt_spanish".tr,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 5.v),
        Text(
          "lbl_9".tr,
          style: theme.textTheme.titleSmall,
        ),
      ],
    );
  }
}
