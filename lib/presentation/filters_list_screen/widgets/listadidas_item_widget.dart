import 'package:ecommerce_user/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListadidasItemWidget extends StatelessWidget {
  const ListadidasItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 1.v,
            bottom: 2.v,
          ),
          child: Text(
            "lbl_adidas".tr,
            style: theme.textTheme.bodyLarge,
          ),
        ),
        CustomImageView(
          svgPath: ImageConstant.imgMobile,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ],
    );
  }
}
