import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque2/02view/screens/02account/typeofwork.dart';
import 'package:jobsque2/02view/screens/02account/login.dart';
import 'package:jobsque2/02view/styles/colors.dart';
import 'package:jobsque2/02view/widgets/custom_elevated_button.dart';
import 'package:jobsque2/03controller/cubit/auth/authcubit.dart';
import 'package:jobsque2/03controller/navigation/routes.dart';
import 'package:sizer/sizer.dart';

import '../../03controller/cubit/auth/authstates.dart';
import '../../03controller/validation/snackbar.dart';
import '../screens/02account/typeofwork.dart';
import '../screens/02account/typeofwork.dart';
import '../screens/02account/typeofwork.dart';
import '../widgets/text_inkwell.dart';

class CreateAccountCard extends StatelessWidget {

  String controller1;

  String controller2;

  String controller3;
  GlobalKey<FormState> formKey;

   CreateAccountCard({Key? key,required this.controller1,required this.controller2,required this.controller3,required this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {



    AuthCubit cubit4 = AuthCubit.get(context);
    return
      Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        TextInkwell(
          alignment: MainAxisAlignment.center,
          labelText: "Already have an account? ",
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.signIn);
          },
          directoryText: "Login",
          directoryColor: AppColors.blue,
          labelColor: AppColors.lightGrey,
        ),
        SizedBox(
          height: 15,
        ),

    BlocConsumer<AuthCubit,AuthStates>(
      listener: (context,state){

        if(state is LoginSuccessAuthState){
          Navigator.pushNamed(context, AppRoutes.homescreen1);
        }if(state is LoginFailedAuthState){
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
    builder: (context,state)=> CustomElevatedButton(
            backgroundColor: AppColors.blue,
            onPressed: () {
              if(formKey.currentState!.validate()){
                cubit4.register(

                    password: controller3, mail: controller2, name: controller1);

                Navigator.pushNamed(context, AppRoutes.typeofwork);
              }

            },
            label: "Create account",
            alignment: Alignment.center,
            height: 13.w,
            width: 90.w,
            borderRadius: 10.w,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Divider(
                  color: AppColors.lightGrey,
                  thickness: 1,
                ),
              ),
            ),
            Text(
              "Or Sign up With Account",
              style: TextStyle(color: AppColors.lightGrey),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Divider(
                  color: AppColors.lightGrey,
                  thickness: 1,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child:


          Row(
            mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,

              crossAxisAlignment: CrossAxisAlignment.start,

              children: [


                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    elevation: 0,
                    fixedSize: Size(50.w, 50),

                  ),
                  onPressed: () {},
                  child: Container(
                      child: Image.asset("assets/images/account/google.png")),
                ),

                ElevatedButton(

                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    elevation: 0,
                    fixedSize: Size(50.w, 50),
                  ),
                  onPressed: () {},
                  child: Container(
                      child: Image.asset("assets/images/account/facebook.png")),
                ),
              ],
            ),

        )
      ],
    );
  }
}
