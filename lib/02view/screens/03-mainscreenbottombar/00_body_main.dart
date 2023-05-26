import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque2/02view/screens/03homescreen/homescreen1.dart';

import '../../../03controller/cubit/widget/bottomnavigationbarcubit/bottomnavigationbarcubit.dart';
import '../../../03controller/cubit/widget/bottomnavigationbarcubit/bottomnavigationbarstats.dart';
import '../../../03controller/navigation/routes.dart';
import '../../styles/colors.dart';
import '../../utilities/resources/assets.dart';
import '../../utilities/resources/strings.dart';


class BodyMainScreen extends StatelessWidget {
  const BodyMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BottomNavigationBarCubit cubit=BottomNavigationBarCubit.get(context);


    return
       BlocConsumer<BottomNavigationBarCubit, BottomNavigationBarStates>(
    listener: (context, state) {},
    builder: (context, state) =>
      Scaffold(
       bottomNavigationBar:BottomNavigationBar(
          showUnselectedLabels: true,
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
          currentIndex: cubit.currentIndex,
          onTap: (int index) {
            cubit.changeBottomIcon(index);


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
        body: cubit.mainscreen,
      ),




    );
  }
}
