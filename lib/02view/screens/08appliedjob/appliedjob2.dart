


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:intl_phone_field/intl_phone_field.dart';

import 'package:sizer/sizer.dart';

import '../../../../03controller/cubit/widget/applyjobcubit/apply_job_States.dart';
import '../../../../03controller/navigation/routes.dart';
import '../../../../03controller/validation/validation.dart';
import '../../components/application_steps.dart';
import '../../styles/colors.dart';
import '../../utilities/resources/assets.dart';
import '../../utilities/resources/strings.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_text_field.dart';



class AppliedJob2 extends StatelessWidget {



  AppliedJob2({
    Key? key,

  }) : super(key: key);

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  GlobalKey formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.iconsBlack,
          ),
        ),
        centerTitle: true,
        title: const CustomText(
          text: "Applied Job",
          fontSize: 20,
          fontWeight: FontWeight.w500,
          height: 1.2,
          color: AppColors.kPrimaryBlack,
        ),

      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(
              width: double.infinity,

              child: DefaultTabController(
                length: 3,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 1.w),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        AppAssets.twitterLogo,
                        width: 13.w,
                        height: 13.w,
                      ),
                      SizedBox(height: 3.w,),
                      const CustomText(
                        text: AppStrings.applyJobTitle,
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        height: 1.2,
                        color: AppColors.kPrimaryBlack,
                      ),
                      const CustomText(
                        text:
                        '${AppStrings.applyJobLocationCompany} • ${AppStrings.applyJobLocationCountry}, ${AppStrings.applyJobLocationCity} ',
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        height: 1.5,
                        color: AppColors.kPrimaryBlack,
                      ),

                      SizedBox(
                        width: double.infinity,
                        height: 150.w,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 4.w),
                          child: Form(
                            key: formKey,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                       ApplicationSteps(
                                        isActiveStep1: true,
                                      ),
                                      SizedBox(height: 6.w,),
                                      CustomText(
                                        text: AppStrings.bioDataStepTitle[0],
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                        height: 1.2,
                                        color: AppColors.kPrimaryBlack,
                                      ),
                                      SizedBox(height: 2.w,),
                                      const CustomText(
                                        text: AppStrings.bioDataSubTitle,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        height: 1.4,
                                        color: AppColors.grey,
                                      ),
                                      SizedBox(height: 6.w,),
                                      Row(
                                        children: const [
                                          CustomText(
                                            text: AppStrings.bioDataFullName,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            height: 1.3,
                                            color: AppColors.kPrimaryBlack,
                                          ),
                                          CustomText(
                                            text: '*',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            height: 1.3,
                                            color: AppColors.red,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 2.w,),
                                      CustomTextField(

                                        borderRadius: 3.w,
                                        enabledBorderColor: AppColors.lightGrey,
                                        focusedBorderColor: AppColors.kPrimaryColor,
                                        prefixIcon: Icons.person_outline_rounded,
                                        prefixIconColor: AppColors.lightGrey,
                                        validator: (value) => nameValidation(value),
                                        controller: nameController,
                                      ),
                                      SizedBox(height: 5.w,),
                                      Row(
                                        children: const [
                                          CustomText(
                                            text: AppStrings.email,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            height: 1.3,
                                            color: AppColors.kPrimaryBlack,
                                          ),
                                          CustomText(
                                            text: '*',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            height: 1.3,
                                            color: AppColors.red,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 2.w,),
                                      CustomTextField(
                                        borderRadius: 3.w,
                                        enabledBorderColor: AppColors.lightGrey,
                                        focusedBorderColor: AppColors.kPrimaryColor,
                                        prefixIcon: Icons.email_outlined,
                                        prefixIconColor: AppColors.lightGrey,
                                        validator: (value) => emailValidation(value),
                                        controller: emailController,
                                      ),
                                      SizedBox(height: 5.w,),
                                      Row(
                                        children: const [
                                          CustomText(
                                            text: AppStrings.bioDataPhoneNumber,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            height: 1.3,
                                            color: AppColors.kPrimaryBlack,
                                          ),
                                          CustomText(
                                            text: '*',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            height: 1.3,
                                            color: AppColors.red,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 2.w,),
                                      IntlPhoneField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderSide: const BorderSide(),
                                            borderRadius: BorderRadius.circular(3.w),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: AppColors.lightGrey,
                                            ),
                                            borderRadius: BorderRadius.circular(3.w),
                                          ),
                                        ),
                                        initialCountryCode: 'US',
                                        controller: phoneController,
                                        dropdownIconPosition: IconPosition.trailing,
                                        flagsButtonPadding: EdgeInsets.symmetric(horizontal: 3.w),
                                        validator: (p0) => phoneNumberValidation(p0.toString()),
                                      ),
                                    ],
                                  ),
                                ),
                                CustomElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, AppRoutes.appliedjob3);
                                  },
                                  label: "Next",
                                  width: 88.w,
                                  alignment: Alignment.center,
                                  height: 13.w,
                                  borderRadius: 10.w,
                                  backgroundColor: AppColors.kPrimaryColor,
                                  labelFontSize: 16,
                                  labelFontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),



                    ],
                  ),
                ),
              ),
            ),






          ],
        ),
      ),
    );
  }
}
