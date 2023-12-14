import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodc_app/features/doctor_feature/dc_home/presentation/screens/dc_home_screen.dart';
import 'package:foodc_app/features/food_feature/bag/presentation/screens/bag_screen.dart';
import 'package:foodc_app/features/food_feature/profile/presentation/screens/profile_screen.dart';
import 'package:foodc_app/features/food_feature/resturant/presentation/screens/resturant_screen.dart';
import 'package:meta/meta.dart';

part 'dc_layout_state.dart';

class DcLayoutCubit extends Cubit<DcLayoutState> {
  DcLayoutCubit() : super(DcLayoutInitial());

  static DcLayoutCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  void changeNavItem(index) {
    currentIndex = index;
    emit(ChangeNavBarItemState());
  }

  List<Widget> dcScreens = [
    const DcHomeScreen(),
    const RestaurantScreen(),
    const BagScreen(),
    const ProfileScreen(),
  ];


  List<String> dcIcons = [
    'assets/images/home-f.svg',
    'assets/images/office-building.svg',
    'assets/images/Vector.svg',
    'assets/images/person-sharp.svg',
  ];

  List<String> dcLables = [
    'Home',
    'Hos',
    'Clinics',
    'Profile',
  ];

  List<int> indexes = [0, 1, 2, 3];
}
