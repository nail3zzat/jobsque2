import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../03controller/validation/validation.dart';
import '../../components/createaccountcard.dart';
import '../../styles/colors.dart';
import '../../widgets/custom_elevated_button.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController controller1 = TextEditingController();

  TextEditingController controller2 = TextEditingController();

  TextEditingController controller3 = TextEditingController();
   GlobalKey<FormState> formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 35,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
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
                    "Create Account",
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
                    "Please create an account to find your dream job",
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
                    child:
                    TextFormField(
                      validator: (value) => nameValidation(value!),

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
                            color: AppColors.lightGrey,
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
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    alignment: Alignment.center,
                    height: 55,
                    child:

                    TextFormField(
                      validator: emailValidation,
                      controller: controller2,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        hintText: 'Email ',
                        filled: true,
                        prefixIcon: Icon(Icons.email_outlined),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.lightGrey,
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
                    child:

                    TextFormField(
                      validator: passValidation,
                      controller: controller3,
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
                            color: AppColors.lightGrey,
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
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Password must be 8 characters",
                    style: TextStyle(color: AppColors.lightGrey, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 20.w,
                ),



                Center(


                  child:


                CreateAccountCard(



                  controller1: controller1.text,
                  controller2: controller2.text,
                  controller3: controller3.text, formKey: formKey,

                ),),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Forget Password ?",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                      fontSize: 15),
                ),
                SizedBox(
                  height: 190,
                ),
                Text(
                  "Sign Up for Facebook",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                      fontSize: 15),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  String? passValidation(String? value) {
    if (value!.length < 8) {
      return "Pasword not valid";
    } else {
      return null;
    }
  }
}
