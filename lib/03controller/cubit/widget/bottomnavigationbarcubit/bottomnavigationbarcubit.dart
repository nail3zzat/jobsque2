import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque2/02view/screens/03homescreen/homescreen1.dart';
import 'package:jobsque2/02view/screens/05savedandnotification/savejob.dart';
import 'package:jobsque2/02view/screens/06messages/messages1.dart';
import 'package:jobsque2/02view/utilities/resources/strings.dart';

import '../../../../02view/screens/04applyJob/01_apply_job_main.dart';
import '../../../../02view/screens/05savedandnotification/savejobemptystate.dart';

import '../../../../02view/screens/07profileandsettings/profile.dart';
import '../../../../02view/screens/07profileandsettings/profilemoh.dart';
import '../../../../02view/screens/08appliedjob/appliedjob1.dart';
import '../../../../02view/screens/08appliedjob/appliedjob2.dart';
import '../../../../02view/screens/08appliedjob/appliedjob3.dart';
import '../../../../02view/screens/08appliedjob/appliedjob4.dart';
import '../../../../02view/screens/08appliedjob/appliedjobmoh.dart';
import '../../../../02view/screens/09completeprofile/education.dart';
import 'bottomnavigationbarstats.dart';




class BottomNavigationBarCubit extends Cubit<BottomNavigationBarStates>{
  BottomNavigationBarCubit() : super (InitialBottomNavigationBarState());



  static BottomNavigationBarCubit get(context)=>BlocProvider.of<BottomNavigationBarCubit>(context);



  int currentIndex=0;



  List <Widget>bodyScreen=[

    const  HomeScreen1(),
     Messages1(),
    const AppliedJob1(),
    const SaveJob(),
    const ProfileScreen(),

  ];

  Widget?mainscreen=HomeScreen1();

  changeBottomIcon(int index){

    currentIndex=index;
    mainscreen=bodyScreen[index];
    emit(EmitBottomNavigationBarState()
    );
  }

}


