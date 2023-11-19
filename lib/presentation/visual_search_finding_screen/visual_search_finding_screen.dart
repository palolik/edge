import 'package:ecommerce_user/core/app_export.dart';
import 'package:flutter/material.dart';

class VisualSearchFindingScreen extends StatelessWidget {
  const VisualSearchFindingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgSearchPrimary,
                height: 45.adaptSize,
                width: 45.adaptSize,
              ),
              SizedBox(height: 16.v),
              SizedBox(
                width: 247.h,
                child: Text(
                  "msg_finding_similar".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.displaySmall,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
