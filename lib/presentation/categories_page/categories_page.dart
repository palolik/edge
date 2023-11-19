import '../categories_page/widgets/listsummersales_item_widget.dart';
import 'package:ecommerce_user/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key})
      : super(
          key: key,
        );

  @override
  CategoriesPageState createState() => CategoriesPageState();
}

class CategoriesPageState extends State<CategoriesPage>
    with AutomaticKeepAliveClientMixin<CategoriesPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.background,
          child: Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 16.v,
              right: 15.h,
            ),
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 16.v,
                );
              },
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListsummersalesItemWidget();
              },
            ),
          ),
        ),
      ),
    );
  }
}
