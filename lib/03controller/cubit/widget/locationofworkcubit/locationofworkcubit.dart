





import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque2/02view/utilities/resources/strings.dart';

import '../../../../02view/styles/colors.dart';
import 'locationofworkstates.dart';



class LocationOfWorkCubit extends Cubit<LocationOfWorkStates>{
  LocationOfWorkCubit() : super (InitialLocationOfWorkState());



  static LocationOfWorkCubit get(context)=>BlocProvider.of<LocationOfWorkCubit>(context);


List<Color>borderColor=List.generate(13,(index)=>AppColors.lightGrey);
  List<Color>fillColor=List.generate(13,(index)=>AppColors.offWhite);

  countryCardColorChange(int index){


    if(borderColor[index]==AppColors.lightGrey){
      borderColor[index]=AppColors.blue;
      fillColor[index]=Colors.lightBlue;
      emit(FirstLocationOfWorkState());
    }else{
      borderColor[index]=AppColors.lightGrey;
      fillColor[index]=AppColors.offWhite;
      emit(SecondLocationOfWorkState());



    }
  }



}


