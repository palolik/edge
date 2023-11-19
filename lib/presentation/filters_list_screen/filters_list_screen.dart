import '../filters_list_screen/widgets/listadidas_item_widget.dart';
import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_image.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_subtitle.dart';
import 'package:ecommerce_user/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_user/widgets/custom_checkbox_button.dart';
import 'package:ecommerce_user/widgets/custom_elevated_button.dart';
import 'package:ecommerce_user/widgets/custom_outlined_button.dart';
import 'package:ecommerce_user/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FiltersListScreen extends StatelessWidget {
  FiltersListScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  bool boutiquemoschin = false;

  bool champion = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 8.v),
                      decoration: AppDecoration.outlineBlack,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 4.v),
                            CustomAppBar(
                                leadingWidth: 32.h,
                                leading: AppbarImage(
                                    svgPath: ImageConstant.imgArrowleft,
                                    margin: EdgeInsets.only(left: 8.h),
                                    onTap: () {
                                      onTapArrowleftone(context);
                                    }),
                                centerTitle: true,
                                title: AppbarSubtitle(text: "lbl_brand".tr))
                          ])),
                  Expanded(
                      child: SizedBox(
                          width: double.maxFinite,
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.h, vertical: 21.v),
                              child: Column(children: [
                                CustomSearchView(
                                    controller: searchController,
                                    hintText: "lbl_search".tr,
                                    prefix: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            15.h, 13.v, 12.h, 13.v),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgSearchBlueGray400)),
                                    prefixConstraints:
                                        BoxConstraints(maxHeight: 40.v),
                                    suffix: Padding(
                                        padding: EdgeInsets.only(right: 15.h),
                                        child: IconButton(
                                            onPressed: () {
                                              searchController.clear();
                                            },
                                            icon: Icon(Icons.clear,
                                                color: Colors.grey.shade600)))),
                                SizedBox(height: 22.v),
                                Expanded(
                                    child: ListView.separated(
                                        physics: BouncingScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(height: 28.v);
                                        },
                                        itemCount: 8,
                                        itemBuilder: (context, index) {
                                          return ListadidasItemWidget();
                                        })),
                                CustomCheckboxButton(
                                    width: 343.h,
                                    text: "msg_boutique_moschino".tr,
                                    value: boutiquemoschin,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.v),
                                    textStyle: theme.textTheme.bodyLarge,
                                    isRightCheck: true,
                                    onChange: (value) {
                                      boutiquemoschin = value;
                                    }),
                                SizedBox(height: 28.v),
                                CustomCheckboxButton(
                                    width: 343.h,
                                    text: "lbl_champion".tr,
                                    value: champion,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.v),
                                    textStyle: theme.textTheme.bodyLarge,
                                    isRightCheck: true,
                                    onChange: (value) {
                                      champion = value;
                                    }),
                                SizedBox(height: 28.v)
                              ]))))
                ])),
            bottomNavigationBar: Container(
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 48.v),
                decoration: AppDecoration.outlineBlack9002,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                      child: CustomOutlinedButton(
                          height: 36.v,
                          text: "lbl_discard".tr,
                          margin: EdgeInsets.only(right: 11.h),
                          buttonStyle: CustomButtonStyles.outlineGray)),
                  Expanded(
                      child: CustomElevatedButton(
                          height: 36.v,
                          text: "lbl_apply".tr,
                          margin: EdgeInsets.only(left: 11.h),
                          buttonStyle: CustomButtonStyles.outlineRedFTL18))
                ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
