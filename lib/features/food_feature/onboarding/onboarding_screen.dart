import 'package:flutter/material.dart';
import 'package:foodc_app/core/constance.dart';
import 'package:foodc_app/core/utlis/app_router.dart';
import 'package:foodc_app/features/food_feature/onboarding/model/onboarding_model.dart';
import 'package:foodc_app/features/food_feature/onboarding/widgets/build_onboarding_item.dart';
import 'package:go_router/go_router.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  List<OnBoardingModel> boardList = [
    OnBoardingModel(
      title: 'Order your food easily and enjoy the offers',
      color: Constance.kPrimaryColor,
      image: 'assets/images/unsplash_J9lD6FS6_cs.png',
      subtitle:
          'You don\'t have to go far to find a good restaurant, we have provided all the restaurants that is near you',
      titleColor: Colors.white,
      buttonTitle: 'Skip',
      index: 0,
    ),
    OnBoardingModel(
      title: 'Book your medical consultation now',
      color: Colors.blue,
      subtitle:
          'Now eat well, don\'t leave the house,You can choose your favorite food only with one click',
      image: 'assets/images/Females doctor at hospital with stethoscope.png',
      titleColor: Colors.black,
      buttonTitle: 'Skip',
      index: 1,
    ),
    OnBoardingModel(
      title: 'With one click you can book your food or doctor',
      color: Colors.black,
      image: 'assets/images/Bowl with fruits for breakfast.png',
      subtitle: 'You can eat at expensive restaurants with affordable price',
      titleColor: Colors.black,
      buttonTitle: 'Let’s go Start',
      index: 2,
    ),
  ];

  var pageController = PageController();
  bool isLast = false;

  void onSubmit() {
    GoRouter.of(context).push(AppRouter.kLoginScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        onPageChanged: (index) {
          if (index == boardList.length - 1) {
            setState(() {
              isLast = true;
              pageController.animateToPage(boardList[index].index,
                  duration: const Duration(seconds: 1),
                  curve: Curves.linearToEaseOut);
            });
          } else {
            isLast = false;
            pageController.animateToPage(boardList[index].index,
                duration: const Duration(seconds: 1),
                curve: Curves.linearToEaseOut);
          }
        },
        itemBuilder: (context, index) => BuildOnBoardingItem(
          index: index,
          model: boardList[index],
          lenght: boardList.length,
          onPressed: () {
            onSubmit();
          },
          pageController: pageController,
        ),
        itemCount: boardList.length,
      ),
    );
  }
}
