import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodc_app/features/layout/presentation/controller/layout_cubit.dart';
import 'package:foodc_app/features/layout/presentation/screen/widgets/nav_bar_item.dart';
import 'package:gap/gap.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LayoutCubit, LayoutState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: Container(
            width: double.maxFinite,
            height: 70.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: Colors.white,
                boxShadow: const
                [
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
                        LayoutCubit.get(context).changeNavItem(index);
                      },
                      child: NavBarItem(
                        index: LayoutCubit.get(context).indexes[index],
                        context: context,
                        label: LayoutCubit.get(context).lables[index],
                        icon: LayoutCubit.get(context).icons[index],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Gap(40.0.w),
                  itemCount: LayoutCubit.get(context).lables.length,
                )),
          ),
          body: LayoutCubit.get(context)
              .screens[LayoutCubit.get(context).currentIndex],
        );
      },
    );
  }
}
