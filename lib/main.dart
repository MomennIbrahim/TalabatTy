import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/core/utlis/app_router.dart';
import 'package:foodc_app/features/doctor_feature/dc_layout/presentation/controller/dc_layout_cubit.dart';
import 'package:foodc_app/features/food_feature/layout/presentation/controller/layout_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (BuildContext context, _) =>
          MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => LayoutCubit(),
              ),
              BlocProvider(
                create: (context) => DcLayoutCubit(),
              ),
            ],
            child: MaterialApp.router(
              routerConfig: AppRouter.router,
              debugShowCheckedModeBanner: false,
              title: 'Yalla Order',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                fontFamily: 'Roboto',
                useMaterial3: true,
              ),
            ),
          ),
    );
  }
}
