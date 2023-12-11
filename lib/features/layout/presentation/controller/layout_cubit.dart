import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodc_app/features/bag/presentation/screens/bag_screen.dart';
import 'package:foodc_app/features/home/presentation/screens/home_screen.dart';
import 'package:foodc_app/features/profile/presentation/screens/profile_screen.dart';
import 'package:foodc_app/features/resturant/presentation/screens/resturant_screen.dart';
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
    const ResturantScreen(),
    const BagScreen(),
    const ProfileScreen(),
  ];

  List<String> icons = [
    'assets/images/home-f.svg',
    'assets/images/cutlery 4.svg',
    'assets/images/Group.svg',
    'assets/images/person-sharp.svg',
  ];

  List<String> lables = [
    'Home',
    'Res',
    'Bag',
    'Profile',
  ];
  List<int> indexes = [0, 1, 2, 3];
}
