import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque2/02view/utilities/resources/strings.dart';
import 'package:jobsque2/03controller/cubit/widget/signincheckbox/signincheckboxstates.dart';




class SignInCheckBoxCubit extends Cubit<SignInCheckBoxStates>{
  SignInCheckBoxCubit() : super (InitialSignInState());



  static SignInCheckBoxCubit get(context)=>BlocProvider.of<SignInCheckBoxCubit>(context);





  bool value=false;
  checkMethod(bool x){

    if (x==true){
      value=true;
      emit(FirstSignInState());
    }else{
      value=false;
      emit(SecondSignInState());
    }
  }

}


