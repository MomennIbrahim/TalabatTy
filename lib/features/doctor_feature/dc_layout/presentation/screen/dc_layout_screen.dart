import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/features/doctor_feature/dc_layout/presentation/controller/dc_layout_cubit.dart';
import 'package:foodc_app/features/food_feature/layout/presentation/screen/widgets/nav_bar_item.dart';
import 'package:gap/gap.dart';

class DcLayoutScreen extends StatelessWidget {
  const DcLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DcLayoutCubit, DcLayoutState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: Container(
            width: double.maxFinite,
            height: 70.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 2.5,
                    color: Colors.black26,
                    spreadRadius: 2.5,
                    offset: Offset(0, 3),
                  ),
                ]),
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        DcLayoutCubit.get(context).changeNavItem(index);
                      },
                      child: NavBarItem(
                        currentIndex:DcLayoutCubit.get(context).currentIndex ,
                        isFood: false,
                        index: DcLayoutCubit.get(context).indexes[index],
                        context: context,
                        label: DcLayoutCubit.get(context).dcLables[index],
                        icon: DcLayoutCubit.get(context).dcIcons[index],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Gap(40.0.w),
                  itemCount: DcLayoutCubit.get(context).dcLables.length,
                )),
          ),
          body: DcLayoutCubit.get(context)
              .dcScreens[DcLayoutCubit.get(context).currentIndex],
        );
      },
    );
  }
}
