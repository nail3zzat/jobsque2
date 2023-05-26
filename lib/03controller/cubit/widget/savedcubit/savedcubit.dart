import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:jobsque2/03controller/cubit/widget/savedcubit/savedstates.dart';

import '../../../../01model/jobmodel/jobmodel.dart';
import '../../../../02view/utilities/resources/assets.dart';
import '../../../../02view/utilities/resources/constants.dart';
import '../homecubit/homecubit.dart';

class SavedCubit extends Cubit<SavedStates> {
  SavedCubit() : super(InitialSavedState());

  static SavedCubit get(BuildContext context) => BlocProvider.of(context);

  List<JobModel> savedJobs = [];

  removeFromSavedJobs({JobModel? jobModel}) {
    savedJobs.remove(jobModel);
    emit(RemoveFromSavedState());
  }

  addToSavedJobs({JobModel? jobModel}) {
    savedJobs.add(jobModel!);
    emit(AddToSavedState());
  }

  addToFavoritesInAPI({required String token, required int userID, required int jobID}) async {
    try {
      Uri url = Uri.parse(
          'http://${AppConstants.addToFavoritesLink}user_id=$userID&job_id=$jobID');
      var headers = {
        'Authorization': 'Bearer $token',
      };
      var response = await Dio().post(
        '$url',
        options: Options(
          headers: headers,
        ),
      );
      print(response.data);
      if (response.statusCode == 200) {
        emit(AddToFavoriteSuccessState());
      } else {
        emit(AddToFavoriteSFailState());
      }
    } catch (e) {
      print(
          "Adding To Favorite failed with error =========================>>>>>>>>>> $e");
    }
  }

  showAllFavoritesFromAPI({required String token, required int userID, BuildContext? context}) async {
    savedJobs = [];
    try {
      Uri url =
      Uri.parse('http://${AppConstants.showFavoritesFromAPILink}$userID');
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
        //print(response.data['data'].length);
        for(int j = 0; j < response.data['data'].length; j++){
          var searchList = HomeCubit.get(context).recentJobs;
          for(int i = 0; i < searchList.length; i++){
            if(searchList[i].id == response.data['data'][j]['job_id']){
              savedJobs.add(searchList[i]);
              HomeCubit.get(context).recentJobsSaveIcons[i] = AppAssets.bottomBarActiveIcon[3];
            }
          }
        }
        emit(GetFavoriteListSuccessState());
      } else {
        emit(GetFavoriteListFailState());
      }
    } catch (e) {
      print(
          "Getting Favorite List failed with error =========================>>>>>>>>>> $e");
    }
  }

  deleteFavoriteFromAPIList({required String token, required int jobID}) async {
    try {
      Uri url = Uri.parse(
          'http://${AppConstants.showFavoritesFromAPILink}$jobID');
      var headers = {
        'Authorization': 'Bearer $token',
      };
      var response = await Dio().delete(
        '$url',
        options: Options(
          headers: headers,
        ),
      );
      print(response.data);
      if (response.statusCode == 200) {
        emit(AddToFavoriteSuccessState());
      } else {
        emit(AddToFavoriteSFailState());
      }
    } catch (e) {
      print(
          "Deleting Favorite failed with error =========================>>>>>>>>>> $e");
    }
  }
}