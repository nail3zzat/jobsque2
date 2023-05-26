import 'package:flutter/material.dart';


import '../../02view/utilities/resources/strings.dart';
import '../cubit/auth/authcubit.dart';


String? nameValidation(String value) {
  if(value.isEmpty){
    return AppStrings.emptyName;
  }
  else if (value.length < 3) {
    return AppStrings.shortName;
  }
  else if (!RegExp(AppStrings.nameRegExp).hasMatch(value)) {
    return AppStrings.validEmail;
  }
  return null;
}

String? passwordValidation(String value) {
  if (value.length < 8) {
    return "shortPassword";
  }
  return null;
}

String? oldPasswordValidation(String value,BuildContext context) {
  if (value != AuthCubit.get(context).userModel.password) {
    return "passwordsNotEqual";
  }
  return null;
}


String? confirmPassValidation(String value,String pass) {
  if (value != pass) {
    return "mustEqualPassword";
  }
  return null;
}

String? emailValidation(value) {
  if (value.length == 0) {
    return AppStrings.emailEmpty;
  }
  else if (!RegExp(AppStrings.emailRegExp).hasMatch(value)) {
    return AppStrings.validEmail;
  }
  return null;
}

String? phoneNumberValidation(String value) {
  if (value.isEmpty) {
    return AppStrings.phoneNumberEmpty;
  }
  else if(value.length < 11){
    return AppStrings.shortPhoneNumber;
  }
  else if (!RegExp(AppStrings.phoneNumberRegExp).hasMatch(value)) {
    return AppStrings.validPhoneNumber;
  }
  return null;
}