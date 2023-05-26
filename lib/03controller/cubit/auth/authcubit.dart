import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque2/02view/utilities/resources/strings.dart';

import '../../../01model/usermodel/usermodel.dart';
import '../../../02view/utilities/resources/constants.dart';
import 'authstates.dart';
import 'package:http/http.dart' as http;



class AuthCubit extends Cubit<AuthStates>{
  AuthCubit() : super (InitialAuthState());



UserModel userModel=UserModel();

  static AuthCubit get(context)=>BlocProvider.of<AuthCubit>(context);


  static String token="";

  login({required String password,required String mail}) async {
    try{
      Uri url = Uri.parse('http://${AppConstants.loginLink}password=$password&email=$mail');
      http.Response response = await http.post(url);
      Map<String, dynamic>  data = json.decode(response.body);

      if (response.statusCode == 200) {
        token = data['token'];
        print('success \n token = $token');
        userModel.id =data['\$user']['id'];
        userModel.name =data['\$user']['name'];
        userModel.email =data['\$user']['email'];
        userModel.password =password;
        emit(LoginSuccessAuthState());
      } else {
        print('failed');
        emit(LoginFailedAuthState());
        throw Exception(data['error']['message']);
      }

    }
    catch(e){
      throw Exception('failed to get response error => $e');
    }
  }




  register({required String password,required String mail, required String name}) async {
    try{
      Uri url = Uri.parse('http://${AppConstants.registerLink}name=$name&email=$mail&password=$password');
      http.Response response = await http.post(url);
      Map<String, dynamic>  data = json.decode(response.body);

      if (response.statusCode == 200) {
        token = data['token'];
        print('success \n token = $token');
        userModel.id =data['data']['id'];
        userModel.name =data['data']['name'];
        userModel.email =data['data']['email'];
        userModel.password =password;
        emit(RegisterSuccessAuthState());
      } else {
        print('failed');
        emit(RegisterFailedAuthState());
        //throw Exception(data['error']['message']);
      }

    }
    catch(e){
      print("login failed with error =========================>>>>>>>>>> $e");
      //throw Exception('failed to get response error => $e');
    }
  }
  }







