import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sizer/sizer.dart';


import '../../../03controller/cubit/auth/authcubit.dart';
import '../../../03controller/cubit/sharedpreferences/sharedprefscubit.dart';
import '../../../03controller/cubit/widget/textfield/text_field_cubit.dart';
import '../../../03controller/cubit/widget/textfield/text_field_states.dart';
import '../../../03controller/validation/validation.dart';
import '../../styles/colors.dart';
import '../../utilities/resources/strings.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_text_field.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  TextEditingController currentPassController = TextEditingController();
  TextEditingController newPassController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = AuthCubit.get(context);
    SharedPCubit sharedPCubit = SharedPCubit.get(context);
    TextFieldCubit textFieldCubit = TextFieldCubit.get(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.kPrimaryBlack,
          ),
        ),
        title: const CustomText(
          text: AppStrings.loginNSecurityChangePassword,
          fontWeight: FontWeight.w500,
          fontSize: 20,
          height: 1.2,
          color: AppColors.kPrimaryBlack,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(5.w),
        child: Stack(
          fit: StackFit.expand,
          children: [
            CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const CustomText(
                              text: AppStrings.changePasswordOldPassword,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: AppColors.kPrimaryBlack,
                            ),
                            SizedBox(height: 3.w),
                            BlocConsumer<TextFieldCubit, TextFieldStates>(
                              listener: (context, state) {},
                              builder: (context, state) => CustomTextField(
                                enabledBorderColor: AppColors.lightGrey,
                                focusedBorderColor: AppColors.kPrimaryColor,
                                errorBorderColor: AppColors.red,
                                prefixIcon: Icons.lock_outline,
                                hintText: "Password",
                                hintColor: AppColors.lightGrey,
                                prefixIconColor: AppColors.lightGrey,
                                suffixIcon: textFieldCubit.cpSuffixIcons[0],
                                suffixIconColor: AppColors.lightGrey,
                                borderRadius: 3.w,
                                validator: (value) => oldPasswordValidation(value,context),
                                controller: currentPassController,
                                obscureText: textFieldCubit.cpFieldsObscure[0],
                                suffixOnPressed: () {
                                  textFieldCubit
                                      .changePasswordVisibilityChange(0);
                                },
                              ),
                            ),
                            SizedBox(height: 3.w),
                            const CustomText(
                              text: AppStrings.changePasswordNewPassword,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: AppColors.kPrimaryBlack,
                            ),
                            SizedBox(height: 3.w),
                            BlocConsumer<TextFieldCubit, TextFieldStates>(
                              listener: (context, state) {},
                              builder: (context, state) => CustomTextField(
                                enabledBorderColor: AppColors.lightGrey,
                                focusedBorderColor: AppColors.kPrimaryColor,
                                errorBorderColor: AppColors.red,
                                prefixIcon: Icons.lock_outline,
                                hintText: "password",
                                hintColor: AppColors.lightGrey,
                                prefixIconColor: AppColors.lightGrey,
                                suffixIcon: textFieldCubit.cpSuffixIcons[1],
                                suffixIconColor: AppColors.lightGrey,
                                borderRadius: 3.w,
                                validator: (value) => passwordValidation(value),
                                controller: newPassController,
                                obscureText: textFieldCubit.cpFieldsObscure[1],
                                suffixOnPressed: () {
                                  textFieldCubit
                                      .changePasswordVisibilityChange(1);
                                },
                              ),
                            ),
                            SizedBox(height: 3.w),
                            const CustomText(
                              text: AppStrings.changePasswordConfirmPassword,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: AppColors.kPrimaryBlack,
                            ),
                            SizedBox(height: 3.w),
                            BlocConsumer<TextFieldCubit, TextFieldStates>(
                              listener: (context, state) {},
                              builder: (context, state) => CustomTextField(
                                enabledBorderColor: AppColors.lightGrey,
                                focusedBorderColor: AppColors.kPrimaryColor,
                                errorBorderColor: AppColors.red,
                                prefixIcon: Icons.lock_outline,
                                hintText: "Password",
                                hintColor: AppColors.lightGrey,
                                prefixIconColor: AppColors.lightGrey,
                                suffixIcon: textFieldCubit.cpSuffixIcons[2],
                                suffixIconColor: AppColors.lightGrey,
                                borderRadius: 3.w,
                                validator: (value) => confirmPassValidation(value, newPassController.text),
                                controller: confirmPassController,
                                obscureText: textFieldCubit.cpFieldsObscure[2],
                                suffixOnPressed: () {
                                  textFieldCubit
                                      .changePasswordVisibilityChange(2);
                                },
                              ),
                            ),
                            SizedBox(height: 3.w),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              child: CustomElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    ///////////////////////////////////////////////////////////////////
                  }
                },
                label: AppStrings.editProfileSave,
                width: 90.w,
                alignment: Alignment.center,
                height: 13.w,
                borderRadius: 10.w,
                backgroundColor: AppColors.kPrimaryColor,
                labelFontSize: 16,
                labelFontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}