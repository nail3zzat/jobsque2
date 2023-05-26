
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../01model/jobmodel/jobmodel.dart';
import '../../../../02view/styles/colors.dart';
import '../../../../02view/utilities/resources/assets.dart';
import '../../../../02view/utilities/resources/constants.dart';
import 'homestates.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(InitialHomeState());

  static HomeCubit get(context) => BlocProvider.of<HomeCubit>(context);

  Color enabledColor = AppColors.kDarkBlue;

  List<Color> itemColors = [];

  changeEnabledItemColor(int index) {
    emit(LoadingSuggestColorListState());
    List<Color> itemColors2 = List.generate(
        suggestJobs.length, (index) => AppColors.whiteGrey);
    itemColors2[index] = enabledColor;
    itemColors = itemColors2;
    emit(EnabledItemColorState());
  }

  List<JobModel> recentJobs = [];
  List<String> recentJobsSaveIcons = [];

  getRecentJobList({required String token}) async {
    recentJobs = [];
    emit(LoadingJobsListState());
    try {
      Uri url = Uri.parse('http://${AppConstants.jobsLink}');
      var headers = {
        'Authorization': 'Bearer $token',
      };
      var response = await Dio().get(
        '$url',
        options: Options(
          headers: headers,
        ),
      );
      if (response.statusCode == 200) {
        response.data['data'].forEach(
              (element) {
            recentJobs.add(
              JobModel.fromMap(element),
            );
            recentJobsSaveIcons.add(AppAssets.bottomBarIcon[3]);
          },
        );
        emit(RetrieveListSuccessState());
      } else {
        emit(RetrieveListFailState());
      }
    } catch (e) {
      print(
          "Retrieve List failed with error =========================>>>>>>>>>> $e");
    }
  }


  List<JobModel> suggestJobs = [];

  getSuggestJobList({required String token,required int userID}) async {
    suggestJobs = [];
    emit(LoadingJobsListState());
    try {
      Uri url = Uri.parse('http://${AppConstants.suggestJobsLink}$userID');
      var headers = {
        'Authorization': 'Bearer $token',
      };
      //print(headers);
      var response = await Dio().get(
        '$url',
        options: Options(
          headers: headers,
        ),
      );
      /*print(response.statusCode);
      print(response.data['data']);*/
      if (response.statusCode == 200) {
        response.data['data'].forEach(
              (element) {
            suggestJobs.add(
              JobModel.fromMap(element),
            );
          },
        );
        changeEnabledItemColor(0);
        /*print(response.data['data'][1]);*/
        emit(RetrieveSuggestListSuccessState());
      } else {
        emit(RetrieveSuggestListFailState());
      }
    } catch (e) {
      print(
          "Suggested List failed with error =========================>>>>>>>>>> $e");
    }
  }
}