import '../my_profile_my_orders_page/widgets/listorder194703_item_widget.dart';
import 'package:ecommerce_user/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MyProfileMyOrdersPage extends StatefulWidget {
  const MyProfileMyOrdersPage({Key? key})
      : super(
          key: key,
        );

  @override
  MyProfileMyOrdersPageState createState() => MyProfileMyOrdersPageState();
}

class MyProfileMyOrdersPageState extends State<MyProfileMyOrdersPage>
    with AutomaticKeepAliveClientMixin<MyProfileMyOrdersPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 15.h,
                        top: 30.v,
                        right: 15.h,
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (
                                context,
                                index,
                              ) {
                                return SizedBox(
                                  height: 24.v,
                                );
                              },
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return Listorder194703ItemWidget();
                              },
                            ),
                          ),
                          Container(
                            height: 164.v,
                            width: 343.h,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimary.withOpacity(1),
                              borderRadius: BorderRadius.circular(
                                8.h,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: appTheme.black900.withOpacity(0.12),
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: Offset(
                                    0,
                                    1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
