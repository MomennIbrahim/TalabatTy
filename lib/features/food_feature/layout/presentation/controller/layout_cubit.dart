import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodc_app/features/food_feature/bag/presentation/screens/bag_screen.dart';
import 'package:foodc_app/features/food_feature/home/presentation/screens/home_screen.dart';
import 'package:foodc_app/features/food_feature/profile/presentation/screens/profile_screen.dart';
import 'package:foodc_app/features/food_feature/profile/presentation/screens/profile_screen2.dart';
import 'package:foodc_app/features/food_feature/resturant/presentation/screens/resturant_screen.dart';
import 'package:meta/meta.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());

  static LayoutCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  void changeNavItem(index) {
    currentIndex = index;
    emit(ChangeNavBarItemState());
  }

  List<Widget> screens = [
    const HomeScreen(),
    const RestaurantScreen(),
    const BagScreen(),
    const ProfileScreen2(),
  ];


  List<String> icons = [
    'assets/images/home-f.svg',
    'assets/images/cutlery 4.svg',
    'assets/images/Group.svg',
    'assets/images/person-sharp.svg',
  ];

  List<String> labels = [
    'Home',
    'Res',
    'Bag',
    'Profile',
  ];
  List<int> indexes = [0, 1, 2, 3];
}
