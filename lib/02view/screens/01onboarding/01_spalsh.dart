import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../03controller/cubit/sharedpreferences/sharedprefscubit.dart';
import '../../../03controller/cubit/sharedpreferences/sharedprefsstates.dart';
import '../../../03controller/navigation/routes.dart';
import '02_onboarding.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SharedPCubit cubit = SharedPCubit.get(context);

    cubit.getFromSharedPrefs();
    Timer(
      const Duration(seconds: 3),
          () => Navigator.pushReplacementNamed(
        context,
            cubit.isFirstTime == true?
        AppRoutes.onBoardingRoute : cubit.isLoggedIn == true?
        AppRoutes.bodyMainPageRoute : AppRoutes.signUp,
      ),
    );
    return
      Scaffold(
      body: BlocConsumer<SharedPCubit, SharedPStates>(
          listener: (BuildContext context, state) {},
          builder: (BuildContext context, Object? state) {


            return
              Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              children: [
                Image.asset(
                    fit: BoxFit.cover,
                    "assets/images/01_onboarding/onboarding/splash/Blur.png"),
                Image.asset(
                    "assets/images/01_onboarding/onboarding/splash/Logo.png"),
              ],
            );
          }),
    );
  }
}
