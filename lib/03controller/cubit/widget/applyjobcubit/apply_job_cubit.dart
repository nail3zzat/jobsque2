import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../01model/jobmodel/jobmodel.dart';
import '../../../../02view/styles/colors.dart';
import '../../../../02view/utilities/resources/assets.dart';
import '../../../../02view/utilities/resources/strings.dart';
import 'apply_job_States.dart';


class ApplyJobCubit extends Cubit<ApplyJobStates> {
  ApplyJobCubit() : super(InitialApplyJobState());

  static ApplyJobCubit get(context) => BlocProvider.of<ApplyJobCubit>(context);

  String jobType = AppStrings.applyJobPeopleFilterItems.first;

  changeJobTypeThroughFilter({required String selectedType}) {
    jobType = selectedType;
    emit(SelectJobState());
  }

  String initialSaveIcon = AppAssets.bottomBarIcon[3];

  changeSaveIcon() {
    if (initialSaveIcon == AppAssets.bottomBarIcon[3]) {
      initialSaveIcon = AppAssets.bottomBarActiveIcon[3];
      emit(SavedToSavedJobsState());
    } else {
      initialSaveIcon = AppAssets.bottomBarIcon[3];
      emit(RemovedFromSavedJobsState());
    }
  }

  List<Color> workTypeBorderColors = List.generate(
      AppStrings.applyJobWorkTypeJobTitles.length,
      (index) => AppColors.lightGrey);
  List<Color> workTypeFillColors = List.generate(
      AppStrings.applyJobWorkTypeJobTitles.length,
      (index) => Colors.transparent);
  List<IconData> workTypeRadioIcon = List.generate(
      AppStrings.applyJobWorkTypeJobTitles.length,
      (index) => Icons.radio_button_off_outlined);

  changeWorkTypeCardColors(int index) {
    workTypeBorderColors[index] =
        workTypeBorderColors[index] == AppColors.kPrimaryColor
            ? AppColors.lightGrey
            : AppColors.kPrimaryColor;
    workTypeRadioIcon[index] =
        workTypeBorderColors[index] == AppColors.lightGrey
            ? Icons.radio_button_off_outlined
            : Icons.radio_button_checked_outlined;
    workTypeFillColors[index] = workTypeFillColors[index] == Colors.transparent
        ? AppColors.kBlue200
        : Colors.transparent;
    emit(ChangeWorkTypeCardColorsState());
  }

  FilePicker? picker = FilePicker.platform;
  FilePickerResult? result;
  PlatformFile? fileCV;
  String? fileToDisplayCV;
  File? pickedFileCV;

  PlatformFile? fileOF;
  String? fileToDisplayOF;
  File? pickedFileOF;

  pickFile({String? fileName}) async {
    if (fileName == 'CV') {
      try {
        result = await picker!.pickFiles(
          type: FileType.any,
          allowMultiple: false,
        );
        emit(PickedFileFromStorageState());
        if (result != null) {
          fileCV = result!.files.first;
          pickedFileCV = File(fileToDisplayCV.toString());
          fileToDisplayCV = fileCV!.path;
          emit(ChangeToUploadedPreviewBoxState());
        }
      } catch (e) {
        print(
            '=======================>>>>>>>>>> This is your CV error :::: $e');
      }
    } else {
      try {
        result = await picker!.pickFiles(
          type: FileType.any,
          allowMultiple: false,
        );
        emit(PickedFileFromStorageState());
        if (result != null) {
          fileOF = result!.files.first;
          pickedFileOF = File(fileToDisplayCV.toString());
          fileToDisplayOF = fileCV!.path;
          emit(ChangeToUploadedPreviewBoxState());
        }
      } catch (e) {
        print(
            '=======================>>>>>>>>>> This is your OtherFile error :::: $e');
      }
    }
  }

  clearPickedFile({String? fileName}) {
    if (fileName == 'CV') {
      fileCV = null;
      pickedFileCV = null;
      fileToDisplayCV = null;
      emit(ChangeToUploadBoxState());
    } else {
      fileOF = null;
      pickedFileOF = null;
      fileToDisplayOF = null;
      emit(ChangeToUploadBoxState());
    }
  }



  int stepIndex = 0;

  changeStepIndexFunction(int index){
    stepIndex = index;
    emit(ChangeStepIndexState());
  }

  List<JobModel> appliedActiveJobs = [
    JobModel(
      image: AppAssets.twitterLogo,
      location: 'مصر',
      name: 'مهندس',
      id: 1,
      favorites: 0,
      expired: 0,
      description: 'أى حاجه',
      companyWebSite: 'google.com',
      companyMail: 'mohanedabdallah88@gmail.com',
      aboutCompany: 'some info',
      skills: 'bye3raf yedayya3 2l wa2t',
      company: 'baklawez',
      types: ['senior','full time','on site'],
      salary: '15k-20k',
    ),
    JobModel(
      image: AppAssets.twitterLogo,
      location: '2مصر',
      name: '2مهندس',
      id: 2,
      favorites: 0,
      expired: 0,
      description: 'أى حاجه',
      companyWebSite: 'google.com',
      companyMail: 'mohanedabdallah88@gmail.com',
      aboutCompany: 'some info',
      skills: 'bye3raf yedayya3 2l wa2t',
      company: 'baklawez',
      types: ['senior','full time','on site'],
      salary: '15k-20k',
    ),
  ];

  List<JobModel> appliedRejectedJobs = [];
}
