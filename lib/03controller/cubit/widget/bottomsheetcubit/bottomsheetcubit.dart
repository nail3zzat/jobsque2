import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../02view/styles/colors.dart';
import '../../../../02view/utilities/resources/strings.dart';
import 'bottomsheetstates.dart';

class FilterBSCubit extends Cubit<FilterBSStates> {
  FilterBSCubit() : super(InitialFilterBSState());

  static FilterBSCubit get(BuildContext context) =>
      BlocProvider.of<FilterBSCubit>(context);

  List<Color> fillColor = List<Color>.generate(
    AppStrings.searchFilterJobTypes.length,
        (index) => AppColors.white,
  );
  List<Color> borderColor = List<Color>.generate(
    AppStrings.searchFilterJobTypes.length,
        (index) => AppColors.lightGrey,
  );
  List<Color> labelColor = List<Color>.generate(
    AppStrings.searchFilterJobTypes.length,
        (index) => AppColors.grey,
  );

  changeJobTypeCardColor(int index){
    if(fillColor[index] == AppColors.white){
      fillColor[index] == AppColors.kBlue200;
      borderColor[index] == AppColors.kPrimaryColor;
      labelColor[index] == AppColors.kPrimaryColor;
      emit(SelectedJobTypeState());
    }
    else{
      fillColor[index] == AppColors.white;
      borderColor[index] == AppColors.lightGrey;
      labelColor[index] == AppColors.midLightGrey;
      emit(UnSelectedJobTypeState());
    }
  }
}