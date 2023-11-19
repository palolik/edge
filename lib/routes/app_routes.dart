import 'package:flutter/material.dart';
import 'package:ecommerce_user/presentation/sign_up_page_screen/sign_up_page_screen.dart';
import 'package:ecommerce_user/presentation/login_page_screen/login_page_screen.dart';
import 'package:ecommerce_user/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:ecommerce_user/presentation/visual_search_screen/visual_search_screen.dart';
import 'package:ecommerce_user/presentation/visual_search_taking_a_photo_screen/visual_search_taking_a_photo_screen.dart';
import 'package:ecommerce_user/presentation/visual_search_crop_the_item_screen/visual_search_crop_the_item_screen.dart';
import 'package:ecommerce_user/presentation/visual_search_finding_screen/visual_search_finding_screen.dart';
import 'package:ecommerce_user/presentation/main_page_container_screen/main_page_container_screen.dart';
import 'package:ecommerce_user/presentation/main_two_screen/main_two_screen.dart';
import 'package:ecommerce_user/presentation/main_three_screen/main_three_screen.dart';
import 'package:ecommerce_user/presentation/categories_tab_container_screen/categories_tab_container_screen.dart';
import 'package:ecommerce_user/presentation/categories_two_screen/categories_two_screen.dart';
import 'package:ecommerce_user/presentation/catalog_two_screen/catalog_two_screen.dart';
import 'package:ecommerce_user/presentation/filters_screen/filters_screen.dart';
import 'package:ecommerce_user/presentation/filters_list_screen/filters_list_screen.dart';
import 'package:ecommerce_user/presentation/product_card_screen/product_card_screen.dart';
import 'package:ecommerce_user/presentation/rating_and_reviews_tab_container_screen/rating_and_reviews_tab_container_screen.dart';
import 'package:ecommerce_user/presentation/rating_and_reviews_with_photo_tab_container_screen/rating_and_reviews_with_photo_tab_container_screen.dart';
import 'package:ecommerce_user/presentation/client_s_review_tab_container_screen/client_s_review_tab_container_screen.dart';
import 'package:ecommerce_user/presentation/favorites_modules_screen/favorites_modules_screen.dart';
import 'package:ecommerce_user/presentation/my_bag_one_screen/my_bag_one_screen.dart';
import 'package:ecommerce_user/presentation/my_bag_checkout_screen/my_bag_checkout_screen.dart';
import 'package:ecommerce_user/presentation/payment_cards_one_screen/payment_cards_one_screen.dart';
import 'package:ecommerce_user/presentation/shipping_addresses_screen/shipping_addresses_screen.dart';
import 'package:ecommerce_user/presentation/add_shipping_address_screen/add_shipping_address_screen.dart';
import 'package:ecommerce_user/presentation/success_screen/success_screen.dart';
import 'package:ecommerce_user/presentation/success_one_screen/success_one_screen.dart';
import 'package:ecommerce_user/presentation/my_profile_screen/my_profile_screen.dart';
import 'package:ecommerce_user/presentation/my_profile_my_orders_tab_container_screen/my_profile_my_orders_tab_container_screen.dart';
import 'package:ecommerce_user/presentation/my_profile_settings_screen/my_profile_settings_screen.dart';
import 'package:ecommerce_user/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String signUpPageScreen = '/sign_up_page_screen';

  static const String loginPageScreen = '/login_page_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String visualSearchScreen = '/visual_search_screen';
/// this one is a screen with two buttons ,
  /// looks fine , no editing required
  static const String visualSearchTakingAPhotoScreen =
      '/visual_search_taking_a_photo_screen';
/// the page looks somewhat empty when a pic is uploaded
  /// 2c edit
  static const String visualSearchCropTheItemScreen =
      '/visual_search_crop_the_item_screen';
/// a lot of things needs to be fixed, or just dlt it
  static const String visualSearchFindingScreen =
      '/visual_search_finding_screen';
/// need to animate this page
  static const String mainPage = '/main_page';
/// shows an error
  /// 1st edit
  static const String mainPageContainerScreen = '/main_page_container_screen';
/// looks ok
  static const String mainTwoScreen = '/main_two_screen';
/// error in bottom flow
  static const String mainThreeScreen = '/main_three_screen';
///error in bottom flow
  static const String categoriesPage = '/categories_page';
/// shows an error
  /// 1st edit
  static const String categoriesTabContainerScreen =
      '/categories_tab_container_screen';
/// empty page,doesnt show anything
  /// 1st edit
  static const String categoriesTwoScreen = '/categories_two_screen';
/// looks ok
  static const String catalogOnePage = '/catalog_one_page';
  /// shows an error
  /// 1st edit
  static const String catalogTwoScreen = '/catalog_two_screen';
  /// shows too many error
  /// 1st edit
  static const String filtersScreen = '/filters_screen';
/// notouches work, overflows
  /// 1st edit
  static const String filtersListScreen = '/filters_list_screen';
/// checkboxes do not check
  /// 2nd edit
  static const String productCardScreen = '/product_card_screen';
/// looks ok
  /// 3rd view
  static const String ratingAndReviewsPage = '/rating_and_reviews_page';
  /// shows an error
  /// 1st edit
  static const String ratingAndReviewsTabContainerScreen =
      '/rating_and_reviews_tab_container_screen';
  /// shows small errors
  /// 3rd edit
  static const String ratingAndReviewsWithPhotoPage =
      '/rating_and_reviews_with_photo_page';
  /// shows an error
  /// 1st edit
  static const String ratingAndReviewsWithPhotoTabContainerScreen =
      '/rating_and_reviews_with_photo_tab_container_screen';
/// looks ok
  /// 3rd view
  static const String clientSReviewPage = '/client_s_review_page';
  /// shows an error
  /// 1st edit
  static const String clientSReviewTabContainerScreen =
      '/client_s_review_tab_container_screen';
/// over flow problem
  /// 1st edit
  static const String favoritesListsPage = '/favorites_lists_page';
  /// shows an error
  /// 1st edit

  static const String favoritesModulesScreen = '/favorites_modules_screen';
  /// over flow problem
  /// 1st edit
  static const String myBagPage = '/my_bag_page';
  /// shows an error
  /// 1st edit
  static const String myBagOneScreen = '/my_bag_one_screen';
  /// shows some error
  /// 2st edit
  static const String myBagCheckoutScreen = '/my_bag_checkout_screen';
  /// overflow some error
  /// 2st edit
  static const String paymentCardsOneScreen = '/payment_cards_one_screen';
  /// overflow some error
  /// 2st edit
  static const String shippingAddressesScreen = '/shipping_addresses_screen';

  static const String addShippingAddressScreen = '/add_shipping_address_screen';

  static const String successScreen = '/success_screen';

  static const String successOneScreen = '/success_one_screen';

  static const String myProfileScreen = '/my_profile_screen';

  static const String myProfileMyOrdersPage = '/my_profile_my_orders_page';

  static const String myProfileMyOrdersTabContainerScreen =
      '/my_profile_my_orders_tab_container_screen';

  static const String myProfileMyOrdersOrderDetailsPage =
      '/my_profile_my_orders_order_details_page';

  static const String myProfileSettingsScreen = '/my_profile_settings_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    signUpPageScreen: (context) => SignUpPageScreen(),
    loginPageScreen: (context) => LoginPageScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    visualSearchScreen: (context) => VisualSearchScreen(),
    visualSearchTakingAPhotoScreen: (context) =>
        VisualSearchTakingAPhotoScreen(),
    visualSearchCropTheItemScreen: (context) => VisualSearchCropTheItemScreen(),
    visualSearchFindingScreen: (context) => VisualSearchFindingScreen(),
    mainPageContainerScreen: (context) => MainPageContainerScreen(),
    mainTwoScreen: (context) => MainTwoScreen(),
    mainThreeScreen: (context) => MainThreeScreen(),
    categoriesTabContainerScreen: (context) => CategoriesTabContainerScreen(),
    categoriesTwoScreen: (context) => CategoriesTwoScreen(),
    catalogTwoScreen: (context) => CatalogTwoScreen(),
    filtersScreen: (context) => FiltersScreen(),
    filtersListScreen: (context) => FiltersListScreen(),
    productCardScreen: (context) => ProductCardScreen(),
    ratingAndReviewsTabContainerScreen: (context) =>
        RatingAndReviewsTabContainerScreen(),
    ratingAndReviewsWithPhotoTabContainerScreen: (context) =>
        RatingAndReviewsWithPhotoTabContainerScreen(),
    clientSReviewTabContainerScreen: (context) =>
        ClientSReviewTabContainerScreen(),
    favoritesModulesScreen: (context) => FavoritesModulesScreen(),
    myBagOneScreen: (context) => MyBagOneScreen(),
    myBagCheckoutScreen: (context) => MyBagCheckoutScreen(),
    paymentCardsOneScreen: (context) => PaymentCardsOneScreen(),
    shippingAddressesScreen: (context) => ShippingAddressesScreen(),
    addShippingAddressScreen: (context) => AddShippingAddressScreen(),
    successScreen: (context) => SuccessScreen(),
    successOneScreen: (context) => SuccessOneScreen(),
    myProfileScreen: (context) => MyProfileScreen(),
    myProfileMyOrdersTabContainerScreen: (context) =>
        MyProfileMyOrdersTabContainerScreen(),
    myProfileSettingsScreen: (context) => MyProfileSettingsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
