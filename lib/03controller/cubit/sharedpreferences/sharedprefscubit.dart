import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque2/03controller/cubit/sharedpreferences/sharedprefsstates.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../01model/usermodel/usermodel.dart';


class SharedPCubit extends Cubit<SharedPStates>{

  SharedPCubit(): super(InitialSharedPState());

  static SharedPCubit get(context) => BlocProvider.of<SharedPCubit>(context);

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  bool? isLoggedIn = false;
  bool? isFirstTime = true;

  UserModel? userModel;

  storeIsLoggedInSharedPrefs(bool? value) async{
    final SharedPreferences prefs = await _prefs;
    if(value == true){
      prefs.setBool('loggedIn', true);
      isLoggedIn = true;
      emit(SetIsLoggedInValueTrueState());
    }else {
      prefs.setBool('loggedIn', false);
      isLoggedIn = false;
      emit(SetIsLoggedInValueFalseState());
    }
  }
  storeIsFirstTimeSharedPrefs() async{
    final SharedPreferences prefs = await _prefs;

      prefs.setBool('isFirstTime', false);
    isFirstTime = false;
      emit(SetIsLoggedInValueTrueState());

  }
  setUserDataInPrefs({UserModel? userModel})async{
    final SharedPreferences prefs = await _prefs;
    prefs.setString('email', userModel!.email!);
    prefs.setString('name', userModel.name!);

    prefs.setString('id', userModel.id.toString());
    emit(SetUserDataInPrefs());
  }

  getUserDataInPrefs()async{
    final SharedPreferences prefs = await _prefs;
    /* var response = await firebaseFirestore.collection('users').doc(prefs.getString('id')).get();
    //print('-----------------------------------------${response.data()}');
    userModel = UserModel.fromMap(response.data());*/
    emit(GetUserDataInPrefs());
  }

  getFromSharedPrefs()async{
    final SharedPreferences prefs = await _prefs;

    emit(SetIsLoggedInValueState());

    if(prefs.getBool('loggedIn') == true){
      isLoggedIn = prefs.getBool('loggedIn');
      emit(LoggedInState());
    }
    else {
      isLoggedIn = false;
      emit(SignedOutState());
    }
    if(prefs.getBool('isFirstTime') == false){
      isFirstTime=prefs.getBool('isFirstTime');
      emit(NotFirstTimeState());
    }
    else {
      isFirstTime=true;
      emit(FirstTimeState());
    }
  }

}