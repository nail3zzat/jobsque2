


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:intl_phone_field/intl_phone_field.dart';

import 'package:sizer/sizer.dart';

import '../../../../03controller/cubit/widget/applyjobcubit/apply_job_States.dart';
import '../../../../03controller/navigation/routes.dart';
import '../../../../03controller/validation/validation.dart';
import '../../../03controller/cubit/widget/applyjobcubit/apply_job_cubit.dart';
import '../../components/application_steps.dart';
import '../../components/work_type_large_card.dart';
import '../../styles/colors.dart';
import '../../utilities/resources/assets.dart';
import '../../utilities/resources/strings.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_text_field.dart';



class AppliedJob3 extends StatelessWidget {



  AppliedJob3({
    Key? key,

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    ApplyJobCubit applyJobCubit = ApplyJobCubit.get(context);
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
          text: "Complete Profile",
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


                      SizedBox(
                        width: double.infinity,
                        height: 163.w,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 4.w),
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
                                      isDoneStep1: true,
                                      isActiveStep2: true,
                                    ),
                                    SizedBox(
                                      height: 6.w,
                                    ),
                                    CustomText(
                                      text: AppStrings.bioDataStepTitle[1],
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      height: 1.2,
                                      color: AppColors.kPrimaryBlack,
                                    ),
                                    SizedBox(
                                      height: 2.w,
                                    ),
                                    const CustomText(
                                      text: AppStrings.bioDataSubTitle,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      height: 1.4,
                                      color: AppColors.grey,
                                    ),
                                    SizedBox(
                                      height: 6.w,
                                    ),
                                    Expanded(
                                      child: BlocConsumer<ApplyJobCubit, ApplyJobStates>(
                                        listener: (BuildContext context, state) {},
                                        builder: (BuildContext context, state) {
                                          return ListView.separated(
                                            itemCount:
                                            AppStrings.applyJobWorkTypeJobTitles.length,
                                            itemBuilder: (BuildContext context, int index) =>
                                                WorkTypeLargeCard(
                                                  jobTitle: AppStrings.applyJobWorkTypeJobTitles[index],
                                                  requiredDocs: AppStrings.applyJobWorkTypeRequiredDocuments[index],
                                                  fillColor: applyJobCubit.workTypeFillColors[index],
                                                  borderColor: applyJobCubit.workTypeBorderColors[index],
                                                  radioButton: applyJobCubit.workTypeRadioIcon[index],
                                                  onTap: () {
                                                    applyJobCubit.changeWorkTypeCardColors(index);
                                                  },
                                                ),
                                            separatorBuilder: (context, index) =>
                                                SizedBox(height: 2.w),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, AppRoutes.uploadDocsScreen);
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
