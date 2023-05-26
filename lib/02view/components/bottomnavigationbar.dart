import 'package:flutter/material.dart';
import 'package:jobsque2/02view/styles/colors.dart';
import 'package:jobsque2/02view/utilities/resources/assets.dart';

class BottomNavigationBarEdited extends StatelessWidget {
  const BottomNavigationBarEdited({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 5,

      items: [
        BottomNavigationBarItem(
          icon: Image.asset(AppAssets.home),
          label: 'Home',


        ),

        BottomNavigationBarItem(
          icon: Image.asset(AppAssets.messages),
          label: 'Messages',

        ),
        BottomNavigationBarItem(
          icon: Image.asset(AppAssets.applied),
          label: 'Applied',

        ),
        BottomNavigationBarItem(
          icon: Image.asset(AppAssets.saved),
          label: 'Saved',

        ),
        BottomNavigationBarItem(
          icon: Image.asset(AppAssets.profile),
          label: 'Profile',

        ),

    ],
      selectedItemColor: AppColors.blue,
    );
  }
}

/*
BlocConsumer<BottomBarCubit, BottomBarStates>(
        listener: (context, state) {},
        builder: (context, state) => BottomNavigationBar(
          showUnselectedLabels: true,
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
          currentIndex: bottomBarCubit.currentIndex,
          onTap: (int index) {
            bottomBarCubit.changeIndex(index);
          },
          unselectedLabelStyle: const TextStyle(
            color: AppColors.midLightGrey,
            fontSize: 10,
            fontWeight: FontWeight.w500,
            height: 1.4,
          ),
          selectedLabelStyle: const TextStyle(
            color: AppColors.kPrimaryColor,
            fontSize: 10,
            fontWeight: FontWeight.w500,
            height: 1.4,
          ),
          selectedItemColor: AppColors.kPrimaryColor,
          unselectedItemColor: AppColors.midLightGrey,
          items: List.generate(
            5,
            (index) => BottomNavigationBarItem(
              icon: Image.asset(
                AppAssets.bottomBarIcon[index],
              ),
              activeIcon: Image.asset(
                AppAssets.bottomBarActiveIcon[index],
              ),
              label: AppStrings.bottomBarPageName[index],
              backgroundColor: AppColors.kPrimaryColor,
            ),
          ),
        ),
      )
*
*
*
*
*
*
*
*
*
*
*
*
*
*
*
*
* */
