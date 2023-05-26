import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque2/02view/styles/colors.dart';
import 'package:jobsque2/02view/utilities/resources/strings.dart';

import 'package:jobsque2/03controller/cubit/widget/signinloginbutton/signinbuttonstates.dart';

import '../../auth/authcubit.dart';

class SignInButtonCubit extends Cubit<SignInButtonStates> {
  SignInButtonCubit() : super(InitialSignInButtonState());
  Color x = AppColors.blue;
  Color y = Colors.white;
  VoidCallback? callBack;

  static SignInButtonCubit get(context) =>
      BlocProvider.of<SignInButtonCubit>(context);

  checkText(
      String user, String pass, BuildContext context, VoidCallback? onPressed) {
    if (user.isEmpty && pass.isEmpty) {
      x = AppColors.lightGrey;
      y = Colors.grey;
      callBack = null;
      emit(FirstSignInButtonState());
    } else {
      x = AppColors.blue;
      y = Colors.white;
      callBack = onPressed;
      emit(SecondSignInButtonState());
    }


  }
}
