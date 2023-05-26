import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque2/03controller/cubit/widget/twostepverificationcubit/twostepverificationstates.dart';

import '../../../../02view/utilities/resources/strings.dart';

class TwoStepVerificationCubit extends Cubit<TwoStepVerificationStates> {
  TwoStepVerificationCubit() : super(InitialTwoStepVerificationState());

  static TwoStepVerificationCubit get(BuildContext context) =>
      BlocProvider.of<TwoStepVerificationCubit>(context);

  bool isActive = false;

  activateOrDeActivate2StepVerification({required bool value}) {
    isActive = value;
    emit(ChangeActivationState());
  }

  String method = AppStrings.twoStepVerificationMethods[1];

  selectVerificationMethod({required String methodName}) {
    method = methodName;
    emit(ChangeSelectedMethodState());
  }

  int counter = 1;

  counterFunction() async{
    while(counter <= 60){
      counter = await Future.delayed(const Duration(seconds: 1),()=> counter+1);
      emit(IncreaseCounterState());
    }
    if(counter > 60){
      emit(RestartCounterState());
    }
  }
}