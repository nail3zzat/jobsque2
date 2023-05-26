import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sizer/sizer.dart';

import '../../../03controller/cubit/widget/applyjobcubit/apply_job_States.dart';
import '../../../03controller/cubit/widget/applyjobcubit/apply_job_cubit.dart';
import '../../../03controller/navigation/routes.dart';
import '../../components/application_steps.dart';
import '../../components/file_model.dart';
import '../../components/upload_box.dart';
import '../../components/uploaded_doc_preview.dart';
import '../../styles/colors.dart';
import '../../utilities/resources/assets.dart';
import '../../utilities/resources/strings.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text.dart';


class UploadDocsScreen extends StatelessWidget {
  const UploadDocsScreen({Key? key}) : super(key: key);

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
          text: AppStrings.bioDataApplyJob,
          fontSize: 20,
          fontWeight: FontWeight.w500,
          height: 1.2,
          color: AppColors.kPrimaryBlack,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: [
            SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
                height: 200.w,
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
                            const CustomText(
                              text: AppStrings.uploadDocsOtherFiles,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              height: 1.3,
                              color: AppColors.kPrimaryBlack,
                            ),
                            SizedBox(
                              height: 4.w,
                            ),
                            if (applyJobCubit.pickedFileOF == null) ...[
                              UploadBox(
                                onPressed: () {
                                  applyJobCubit.pickFile(fileName: 'OF');
                                },
                                title: AppStrings.uploadDocsUOFBoxTitle,
                              ),
                            ],
                            if (applyJobCubit.pickedFileOF != null) ...[
                              UploadedDocPreview(
                                fileModel: FileModel(
                                  name: applyJobCubit.fileOF!.name,
                                  type: applyJobCubit.fileOF!.extension,
                                  photo: AppAssets.pdfLogo,
                                  size: (applyJobCubit.fileOF!.size / 1000)
                                      .toString(),
                                ),
                                onPressedEdit: () {
                                  applyJobCubit.pickFile(fileName: 'OF');
                                },
                                onPressedDelete: () {
                                  applyJobCubit.clearPickedFile(fileName: 'OF');
                                },
                              ),
                            ],
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 5.w,
              child: CustomElevatedButton(
                onPressed: () {
                   Navigator.pushNamed(context, AppRoutes.backToHomeScreen);
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
            ),
          ],
        ),
      ),
    );
  }
}
