


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



import 'package:sizer/sizer.dart';

import '../../../../03controller/cubit/widget/applyjobcubit/apply_job_States.dart';
import '../../../../03controller/navigation/routes.dart';

import '../../../03controller/cubit/widget/applyjobcubit/apply_job_cubit.dart';
import '../../components/application_steps.dart';
import '../../components/file_model.dart';
import '../../components/upload_box.dart';
import '../../components/uploaded_doc_preview.dart';

import '../../styles/colors.dart';
import '../../utilities/resources/assets.dart';
import '../../utilities/resources/strings.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text.dart';




class AppliedJob4 extends StatelessWidget {



  AppliedJob4({
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

            DefaultTabController(
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
                      height: 120.w,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 4.w),
                        child: BlocConsumer<ApplyJobCubit, ApplyJobStates>(
                          listener: (context, state) {},
                          builder: (context, state) => Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                   ApplicationSteps(
                                    isActiveStep1: true,
                                    isDoneStep1: true,
                                    isActiveStep2: true,
                                    isDoneStep2: true,
                                    isActiveStep3: true,
                                  ),
                                  SizedBox(
                                    height: 6.w,
                                  ),
                                  CustomText(
                                    text: AppStrings.bioDataStepTitle[2],
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
                                  Row(
                                    children: const [
                                      CustomText(
                                        text: AppStrings.uploadDocsUploadCV,
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
                                  SizedBox(
                                    height: 4.w,
                                  ),
                                  if (applyJobCubit.pickedFileCV == null) ...[
                                    UploadBox(
                                      onPressed: () {
                                        applyJobCubit.pickFile(fileName: 'CV');
                                      },
                                      title: AppStrings.uploadDocsUCVBoxTitle,
                                    ),
                                  ],
                                  if (applyJobCubit.pickedFileCV != null) ...[
                                    UploadedDocPreview(
                                      fileModel: FileModel(
                                        name: applyJobCubit.fileCV!.name,
                                        type: applyJobCubit.fileCV!.extension,
                                        photo: AppAssets.pdfLogo,
                                        size: (applyJobCubit.fileCV!.size / 1000)
                                            .toString(),
                                      ),
                                      onPressedEdit: () {
                                        applyJobCubit.pickFile(fileName: 'CV');
                                      },
                                      onPressedDelete: () {
                                        applyJobCubit.clearPickedFile(fileName: 'CV');
                                      },
                                    ),
                                  ],
                                  SizedBox(
                                    height: 4.w,
                                  ),


                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    CustomElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.appliedjob1);
                      },
                      label: AppStrings.submit,
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
    );
  }
}
