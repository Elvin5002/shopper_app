import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopper_app/utils/constants/app_constants.dart';

import '../../cubits/home/home_cubit.dart';
import '../../data/models/local/navbar_items.dart';
import '../../utils/constants/app_colors.dart';
import '../../utils/extensions/sizedbox_extension.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    const bottomNavBarItems = BottomNavBarItems.bottomNavBarItems;
    return SizedBox(
      height: AppConstants.customBottomNavBarHeight,
      child: StreamBuilder(
          initialData: 0,
          stream: cubit.selectedIndexSubject.stream,
          builder: (context, snapshot) {
            final selectedIndex = snapshot.data;
            return BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              iconSize: 24,
              onTap: (index) => cubit.selectedIndexSubject.add(index),
              selectedFontSize: 0,
              currentIndex: selectedIndex!,
              items: [
                for (final item in bottomNavBarItems)
                  BottomNavigationBarItem(
                    label: '',
                    icon: SvgPicture.asset(item.icon),
                    activeIcon: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 18.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 2,
                            width: 12,
                            child: ColoredBox(color: AppColors.green),
                          ),
                          4.h,
                          SvgPicture.asset(item.activeIcon),
                        ],
                      ),
                    ),
                  ),
              ],
            );
          }),
    );
  }
}
