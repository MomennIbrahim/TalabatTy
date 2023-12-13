import 'package:flutter/cupertino.dart';
import 'package:foodc_app/features/authentication/presentation/screens/forget_screen/forget_pasword_screen.dart';
import 'package:foodc_app/features/authentication/presentation/screens/forget_screen/new_pasword_screen.dart';
import 'package:foodc_app/features/authentication/presentation/screens/forget_screen/success_screen.dart';
import 'package:foodc_app/features/authentication/presentation/screens/forget_screen/verify_screen.dart';
import 'package:foodc_app/features/authentication/presentation/screens/login_screen.dart';
import 'package:foodc_app/features/authentication/presentation/screens/register_screen.dart';
import 'package:foodc_app/features/home/presentation/screens/all_retaurant_discount_screen.dart';
import 'package:foodc_app/features/home/presentation/screens/customer_favorite_cuisines_screen.dart';
import 'package:foodc_app/features/layout/presentation/screen/layout_screen.dart';
import 'package:foodc_app/features/menu/presentation/screen/favorite_screen.dart';
import 'package:foodc_app/features/menu/presentation/screen/menu_screen.dart';
import 'package:foodc_app/features/onboarding/onboarding_screen.dart';
import 'package:foodc_app/features/resturant/presentation/screens/menu_restaurant_screen.dart';
import 'package:foodc_app/features/resturant/presentation/screens/restaurant_details_screen.dart';
import 'package:foodc_app/test.dart';
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
  static const kRestaurantDetailsScreen =
      '/restaurantDetailsScreen';
  static const kMenuRestaurantScreen =
      '/menuRestaurantScreen';
  static const kMenuScreen =
      '/menuScreen';
  static const kFavoriteScreen = '/favoriteScreen';


  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const OnBoardingScreen();
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
        return MenuScreen();
      },
    ),

    GoRoute(
      path: kFavoriteScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const FavoriteScreen();
      },
    ),
  ]);
}
