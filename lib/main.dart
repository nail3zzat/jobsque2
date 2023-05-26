import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque2/03controller/cubit/auth/authcubit.dart';
import 'package:jobsque2/03controller/cubit/widget/bottomnavigationbarcubit/bottomnavigationbarcubit.dart';
import 'package:jobsque2/03controller/cubit/widget/signincheckbox/signincheckboxcubit.dart';
import 'package:jobsque2/03controller/cubit/widget/signinloginbutton/signinbuttoncubit.dart';
import 'package:sizer/sizer.dart';

import '02view/screens/01onboarding/01_spalsh.dart';
import '03controller/cubit/sharedpreferences/sharedprefscubit.dart';
import '03controller/cubit/widget/applyjobcubit/apply_job_cubit.dart';
import '03controller/cubit/widget/cubitonboardingbutton/onboardingbuttoncubit.dart';
import '03controller/cubit/widget/locationofworkcubit/locationofworkcubit.dart';
import '03controller/cubit/widget/typeofworkcubit/typeofworkcubit.dart';
import '03controller/navigation/router.dart';

void main() {
  runApp( MultiBlocProvider(
      providers: [
        BlocProvider(
          create:(context)=>OnBoardingButtonCubit(),
        ),
        BlocProvider(
          create:(context)=>SignInCheckBoxCubit(),
        ),
        BlocProvider(
          create:(context)=>SignInButtonCubit(),
        ),
        BlocProvider(
          create:(context)=>LocationOfWorkCubit(),
        ),
        BlocProvider(
          create:(context)=>BottomNavigationBarCubit(),
        ),
        BlocProvider(
          create: (context) => ApplyJobCubit(),
        ),

        BlocProvider(
          create: (context) => AuthCubit(),
        ),


        BlocProvider(
          create: (context) => SharedPCubit(),
        ),

        BlocProvider(
          create: (context) => SharedPCubit(),
        ),

        BlocProvider(
          create:(context)=>TypeOfWorkCubit(),
        ),

        BlocProvider(
          create:(context)=>TypeOfWorkCubit(),
        ),





      ],
  child: MyApp()));
}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return
       Sizer(
         builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
           return MaterialApp(
             debugShowCheckedModeBanner: false,

             onGenerateRoute:onGenerate ,

             home:Splash(),
           );
         },);

  }
}


