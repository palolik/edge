import 'package:ecommerce_user/core/app_export.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_image.dart';
import 'package:ecommerce_user/widgets/app_bar/appbar_subtitle.dart';
import 'package:ecommerce_user/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_user/widgets/custom_elevated_button.dart';
import 'package:ecommerce_user/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AddShippingAddressScreen extends StatelessWidget {
  AddShippingAddressScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController stateProvinceReController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
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
                                    title: AppbarSubtitle(
                                        text: "msg_adding_shipping".tr))
                              ])),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.h, vertical: 35.v),
                          child: Column(children: [
                            CustomFloatingTextField(
                                controller: fullNameController,
                                labelText: "lbl_full_name".tr,
                                labelStyle: CustomTextStyles.titleSmallGray500,
                                hintText: "lbl_full_name".tr,
                                contentPadding: EdgeInsets.fromLTRB(
                                    20.h, 24.v, 20.h, 25.v)),
                            SizedBox(height: 20.v),
                            CustomFloatingTextField(
                                controller: addressController,
                                labelText: "lbl_address".tr,
                                labelStyle: theme.textTheme.bodyMedium!,
                                hintText: "lbl_address".tr),
                            SizedBox(height: 20.v),
                            CustomFloatingTextField(
                                controller: cityController,
                                labelText: "lbl_city".tr,
                                labelStyle: theme.textTheme.bodyMedium!,
                                hintText: "lbl_city".tr),
                            SizedBox(height: 20.v),
                            CustomFloatingTextField(
                                controller: stateProvinceReController,
                                labelText: "msg_state_province_region".tr,
                                labelStyle: theme.textTheme.bodyMedium!,
                                hintText: "msg_state_province_region".tr),
                            SizedBox(height: 20.v),
                            CustomFloatingTextField(
                                controller: zipcodeController,
                                labelText: "msg_zip_code_postal".tr,
                                labelStyle: theme.textTheme.bodyMedium!,
                                hintText: "msg_zip_code_postal".tr,
                                textInputType: TextInputType.number),
                            SizedBox(height: 20.v),
                            CustomFloatingTextField(
                                controller: countryController,
                                labelText: "lbl_country".tr,
                                labelStyle: theme.textTheme.bodyMedium!,
                                hintText: "lbl_country".tr,
                                textInputAction: TextInputAction.done),
                            SizedBox(height: 40.v),
                            CustomElevatedButton(text: "lbl_save_address".tr),
                            SizedBox(height: 5.v)
                          ]))
                    ])))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
