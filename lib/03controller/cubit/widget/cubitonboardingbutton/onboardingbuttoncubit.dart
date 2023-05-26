import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque2/02view/utilities/resources/strings.dart';

import 'onboardingbuttonstates.dart';


class OnBoardingButtonCubit extends Cubit<OnBoardingButtonStates>{
  OnBoardingButtonCubit() : super (InitialOnBoardBState());



static OnBoardingButtonCubit get(context)=>BlocProvider.of<OnBoardingButtonCubit>(context);


String buttonText=AppStrings.next;
int pageIndex=0;

changeButtonText(int index){


  if (index==2){
    buttonText=AppStrings.getStarted;
    emit(SecondOnBoardBState());
  }else{
    buttonText=AppStrings.next;
    emit(FirstOnBoardBState());
  }
}

}


