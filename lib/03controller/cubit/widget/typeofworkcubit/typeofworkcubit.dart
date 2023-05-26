import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:jobsque2/03controller/cubit/widget/typeofworkcubit/tupeofworkstates.dart';

import '../../../../02view/styles/colors.dart';


class TypeOfWorkCubit extends Cubit<TypeOfWorkStates> {
  TypeOfWorkCubit() : super(InitialTypeOfWorkState());

  static TypeOfWorkCubit get(context) => BlocProvider.of<TypeOfWorkCubit>(context);

  List<Color> borderColor = List.generate(6, (index) => AppColors.lightGrey);

  List<Color> fillColor = List.generate(6, (index) => AppColors.offWhite);

  List<Color> iconColor = List.generate(6, (index) => AppColors.iconsBlack);

  static const List<String> workTypeTitle = [
    'UI/UX Designer',
    'Illustrator Designer',
    'Developer',
    'Management',
    'Information Technology',
    'Research and Analytics',
  ];

  List<String> selectedWorkTypeTitles = [];



  wtCardColorChange(int index,{required String title}) {
    if (borderColor[index] == AppColors.lightGrey) {
      borderColor[index] = AppColors.kPrimaryColor;
      fillColor[index] = AppColors.kBlue200;
      iconColor[index] = AppColors.kPrimaryColor;
      selectedWorkTypeTitles.add(title);
      emit(FirstTypeOfWorkState());
    } else {
      borderColor[index] = AppColors.lightGrey;
      fillColor[index] = AppColors.offWhite;
      iconColor[index] = AppColors.iconsBlack;
      selectedWorkTypeTitles.remove(title);
      emit(SecondTypeOfWorkState());
    }
  }
}