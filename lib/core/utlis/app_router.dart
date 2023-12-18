import 'package:flutter/cupertino.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/clinic_details_screen.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/doctor_profile_screen.dart';
import 'package:foodc_app/features/doctor_feature/dc_all_clinics/presentation/screen/reservation_summary_screen.dart';
import 'package:foodc_app/features/doctor_feature/dc_layout/presentation/screen/dc_layout_screen.dart';
import 'package:foodc_app/features/food_feature/authentication/presentation/screens/forget_screen/forget_pasword_screen.dart';
import 'package:foodc_app/features/food_feature/authentication/presentation/screens/forget_screen/new_pasword_screen.dart';
import 'package:foodc_app/features/food_feature/authentication/presentation/screens/forget_screen/success_screen.dart';
import 'package:foodc_app/features/food_feature/authentication/presentation/screens/forget_screen/verify_screen.dart';
import 'package:foodc_app/features/food_feature/authentication/presentation/screens/login_screen.dart';
import 'package:foodc_app/features/food_feature/authentication/presentation/screens/register_screen.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/all_retaurant_discount_screen.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/customer_favorite_cuisines_screen.dart';
import 'package:foodc_app/features/food_feature/layout/presentation/screen/layout_screen.dart';
import 'package:foodc_app/features/food_feature/menu/presentation/screen/about_us_screen.dart';
import 'package:foodc_app/features/food_feature/menu/presentation/screen/favorite_screen.dart';
import 'package:foodc_app/features/food_feature/menu/presentation/screen/language_screen.dart';
import 'package:foodc_app/features/food_feature/menu/presentation/screen/menu_screen.dart';
import 'package:foodc_app/features/food_feature/menu/presentation/screen/offers_screen.dart';
import 'package:foodc_app/features/food_feature/menu/presentation/screen/track_order_screen.dart';
import 'package:foodc_app/features/food_feature/onboarding/onboarding_screen.dart';
import 'package:foodc_app/features/food_feature/profile/presentation/screens/edit_profile_screen.dart';
import 'package:foodc_app/features/food_feature/profile/presentation/screens/my_order_screen.dart';
import 'package:foodc_app/features/food_feature/profile/presentation/screens/saved_address_screen.dart';
import 'package:foodc_app/features/food_feature/resturant/presentation/screens/menu_restaurant_screen.dart';
import 'package:foodc_app/features/food_feature/resturant/presentation/screens/restaurant_details_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kLoginScreen = '/loginScreen';
  static const kRegisterScreen = '/registerScreen';
  static const kForgetPasswordScreen = '/forgetPasswordScreen';
  static const kVerifyScreen = '/verifyScreen';
  static const kSuccessScreen = '/successScreen';
  static const kNewPasswordScreen = '/newPasswordScreen';
  static const kLayoutScreen = '/layoutScreen';
  static const kAllRestaurantDiscountScreen = '/allRestaurantDiscountScreen';
  static const kCustomerFavoriteCuisinesScreen =
      '/customerFavoriteCuisinesScreen';
  static const kRestaurantDetailsScreen = '/restaurantDetailsScreen';
  static const kMenuRestaurantScreen = '/menuRestaurantScreen';
  static const kMenuScreen = '/menuScreen';
  static const kFavoriteScreen = '/favoriteScreen';
  static const kOfferScreen = '/offerScreen';
  static const kLanguageScreen = '/languageScreen';
  static const kAboutUsScreen = '/aboutUSScreen';
  static const kEditProfileScreen = '/editProfileScreen';
  static const kTrackOrderScreen = '/trackOrderScreen';
  static const kMyOrderScreen = '/myOrderScreen';
  static const kSavedAddressScreen = '/savedAddressScreen';
  static const kDcLayoutScreen = '/dcLayoutScreen';
  static const kClinicsDetailsScreen = '/clinicsDetaisScreen';
  static const kDoctorProfileScreen = '/doctorProfileScreen';

  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const ReservationSummaryScreen();
      },
    ),
    GoRoute(
      path: kLoginScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
      path: kRegisterScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const RegisterScreen();
      },
    ),
    GoRoute(
      path: kForgetPasswordScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const ForgetPasswordScreen();
      },
    ),
    GoRoute(
      path: kVerifyScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const VerifyScreen();
      },
    ),
    GoRoute(
      path: kSuccessScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const SuccessScreen();
      },
    ),
    GoRoute(
      path: kNewPasswordScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const NewPasswordScreen();
      },
    ),
    GoRoute(
      path: kLayoutScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const LayoutScreen();
      },
    ),
    GoRoute(
      path: kAllRestaurantDiscountScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const AllRestaurantDiscountScreen();
      },
    ),
    GoRoute(
      path: kCustomerFavoriteCuisinesScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const CustomerFavoriteCuisinesScreen();
      },
    ),
    GoRoute(
      path: kRestaurantDetailsScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const RestaurantDetailsScreen();
      },
    ),
    GoRoute(
      path: kMenuRestaurantScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const MenuRestaurantScreen();
      },
    ),
    GoRoute(
      path: kMenuScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const MenuScreen();
      },
    ),
    GoRoute(
      path: kFavoriteScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const FavoriteScreen();
      },
    ),
    GoRoute(
      path: kOfferScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const OfferScreen();
      },
    ),
    GoRoute(
      path: kLanguageScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const LanguageScreen();
      },
    ),
    GoRoute(
      path: kAboutUsScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const AboutUsScreen();
      },
    ),
    GoRoute(
      path: kEditProfileScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const EditProfileScreen();
      },
    ),
    GoRoute(
      path: kTrackOrderScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const TrackOrderScreen();
      },
    ),
    GoRoute(
      path: kMyOrderScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const MyOrderScreen();
      },
    ),
    GoRoute(
      path: kSavedAddressScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const SavedAddressScreen();
      },
    ),
    GoRoute(
      path: kDcLayoutScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const DcLayoutScreen();
      },
    ),
    GoRoute(
      path: kClinicsDetailsScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const ClinicDetailsScreen();
      },
    ),

    GoRoute(
      path: kDoctorProfileScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const DoctorProfileScreen();
      },
    ),
  ]);
}
