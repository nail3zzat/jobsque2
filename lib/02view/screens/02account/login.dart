import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque2/02view/widgets/text_inkwell.dart';
import 'package:jobsque2/03controller/cubit/auth/authcubit.dart';
import 'package:jobsque2/03controller/cubit/auth/authstates.dart';
import 'package:jobsque2/03controller/cubit/sharedpreferences/sharedprefsstates.dart';
import 'package:jobsque2/03controller/cubit/widget/signinloginbutton/signinbuttoncubit.dart';
import 'package:jobsque2/03controller/cubit/widget/signinloginbutton/signinbuttonstates.dart';
import 'package:sizer/sizer.dart';

import '../../../03controller/cubit/sharedpreferences/sharedprefscubit.dart';
import '../../../03controller/cubit/widget/signincheckbox/signincheckboxcubit.dart';
import '../../../03controller/cubit/widget/signincheckbox/signincheckboxstates.dart';
import '../../../03controller/navigation/routes.dart';
import '../../../03controller/validation/snackbar.dart';
import '../../components/createaccountcard.dart';
import '../../styles/colors.dart';
import '../../widgets/custom_elevated_button.dart';

class SignIn extends StatefulWidget {


  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
 TextEditingController controller1 =TextEditingController();

 TextEditingController controller2 =TextEditingController();

 GlobalKey<FormState> formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {


    SignInCheckBoxCubit cubit = SignInCheckBoxCubit.get(context);
    SignInButtonCubit cubit1 = SignInButtonCubit.get(context);
    AuthCubit cubit2 = AuthCubit.get(context);
    SharedPCubit cubit3 = SharedPCubit.get(context);

    //var cubit = BlocProvider.of<SignInCheckBoxCubit>(context);
    return Scaffold(
      appBar:
      AppBar(
        toolbarHeight: 40,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.signUp);
          },
          icon: const Icon(Icons.arrow_back, color: AppColors.black),
        ),
        title: Align(
          child: Image.asset(
              "assets/images/01_onboarding/onboarding/onboarding1/Logo.png"),
          alignment: Alignment.centerRight,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Please login to find your dream job",
                    style: TextStyle(
                      color: AppColors.lightGrey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    alignment: Alignment.center,
                    height: 55,
                    child: TextField(
                      onChanged: (
                      String text
                      ){
                        cubit1.checkText(
                            controller1.text,controller2.text,context,
                                (){

                              cubit2.login(
                                  mail: text,
                                  password: controller2.text);


                            }

                        );
                      },
                      controller: controller1,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Username',
                        prefixIcon: Icon(Icons.person_outline_rounded),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: AppColors.blue,
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 55,
                    child: TextField(
                      onChanged: (
                          String text
                          ){
                        cubit1.checkText(
                            controller1.text,controller2.text,context,
                                (){

                              cubit2.login(
                                  mail: controller1.text,
                                  password: text);


                            }

                        );
                      },
                      controller: controller2,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        hintText: 'Password',
                        filled: true,
                        prefixIcon: Icon(Icons.lock_open_outlined),
                        suffixIcon: Icon(Icons.remove_red_eye),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: AppColors.blue,
                            width: 1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      SizedBox(

                        child:
                            BlocConsumer<SharedPCubit, SharedPStates>(
                          listener: (context, state) {},
                          builder: (context, state) => Checkbox(

                            value: cubit3.isLoggedIn,
                            onChanged: (bool? newValue) {
                              cubit3.storeIsLoggedInSharedPrefs(newValue!);
                            },
                          ),
                        ),
                      ),
                      Text(
                        "Remember me",
                        style: TextStyle(color: AppColors.black, fontSize: 16),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {

                              Navigator.pushNamed(context, AppRoutes.forgetpassword);
                            },
                            child: Text(
                              "Forget Password?",
                              style: TextStyle(
                                color: AppColors.blue,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.w,
                ),
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      TextInkwell(
                        alignment: MainAxisAlignment.center,
                        labelText: "Don't have an account? ",
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.signUp);
                        },
                        directoryText: "Register",
                        directoryColor: AppColors.blue,
                        labelColor: AppColors.lightGrey,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      BlocConsumer<AuthCubit,AuthStates>(
                        listener: (context,state){

                          if(state is LoginSuccessAuthState){
                            cubit3.setUserDataInPrefs(
                              userModel: cubit2.userModel
                            );

                            Navigator.pushNamed(context, AppRoutes.bodyMainPageRoute);
                          }if(state is LoginFailedAuthState){
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          }
                        },
                        builder: (context,state)=> BlocConsumer<SignInButtonCubit,SignInButtonStates>(
                          listener: (context,state){
                            if(state is InitialSignInButtonState){

                              cubit1.checkText(
                                  controller1.text,controller2.text,context,
                                      (){

                                    cubit2.login(
                                        mail: controller1.text,
                                        password: controller2.text);


                                  }

                              );
                            }

                          },
                          builder: (context,state)=>CustomElevatedButton(


                            backgroundColor: cubit1.x,
                            onPressed: cubit1.callBack,
                            label: "Login",
                            labelColor: cubit1.y,
                            alignment: Alignment.center,
                            height: 13.w,
                            width: 90.w,
                            borderRadius: 10.w,
                          ),
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
                            "Or Login With Account",
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
                        padding: const
                        EdgeInsets.symmetric(horizontal: 0),
                        child: Row(
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
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

