import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/presentation/client_s_review_page/client_s_review_page.dart';
import 'package:flutter/material.dart';

class ClientSReviewTabContainerScreen extends StatefulWidget {
  const ClientSReviewTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ClientSReviewTabContainerScreenState createState() =>
      ClientSReviewTabContainerScreenState();
}

class ClientSReviewTabContainerScreenState
    extends State<ClientSReviewTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Container(
            decoration: AppDecoration.background.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL34,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Spacer(),
                SizedBox(
                  width: 60.h,
                  child: Divider(
                    color: appTheme.gray500,
                  ),
                ),
                SizedBox(height: 18.v),
                Text(
                  "msg_what_is_you_rate".tr,
                  style: CustomTextStyles.titleMediumBlack900,
                ),
                SizedBox(height: 18.v),
                Container(
                  height: 36.v,
                  width: 276.h,
                  child: TabBar(
                    controller: tabviewController,
                    labelPadding: EdgeInsets.zero,
                    tabs: [
                      Tab(
                        child: CustomImageView(
                          svgPath: ImageConstant.imgStarOrange300,
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                        ),
                      ),
                      Tab(
                        child: CustomImageView(
                          svgPath: ImageConstant.imgStarOrange300,
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                        ),
                      ),
                      Tab(
                        child: CustomImageView(
                          svgPath: ImageConstant.imgStarOrange300,
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                        ),
                      ),
                      Tab(
                        child: CustomImageView(
                          svgPath: ImageConstant.imgStarOrange300,
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                        ),
                      ),
                      Tab(
                        child: CustomImageView(
                          svgPath: ImageConstant.imgStarGray500,
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 529.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      ClientSReviewPage(),
                      ClientSReviewPage(),
                      ClientSReviewPage(),
                      ClientSReviewPage(),
                      ClientSReviewPage(),
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
