import 'package:flutter/material.dart';
import 'package:jobsque2/02view/screens/02account/passwordchangedsuccessfully.dart';
import 'package:sizer/sizer.dart';

import '../../../03controller/navigation/routes.dart';
import '../../styles/colors.dart';
import '../../utilities/resources/assets.dart';
import '../../utilities/resources/strings.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/text_inkwell.dart';
import 'passwordchangedsuccessfully.dart';

class CreateNewPassword extends StatelessWidget {

  TextEditingController controller1 =TextEditingController();

  TextEditingController controller2 =TextEditingController();
  CreateNewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 35,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.typeofwork);
              },
              icon: const Icon(Icons.arrow_back, color: AppColors.black),
            ),
            title: Align(
              child: Image.asset(
                  "assets/images/01_onboarding/onboarding/onboarding1/Logo.png"),
              alignment: Alignment.centerRight,
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Create new Password",
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
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  child: Text(
                    textAlign: TextAlign.start,
                    "Set your new password so you can login and\naccess jobsque.",
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
                    height: 55,
                    child: TextField(
                      controller: controller2,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        hintText: 'New Password',
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
                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Password must be 8 characters",
                    style: TextStyle(color: AppColors.lightGrey, fontSize: 16),
                  ),
                ),
                SizedBox(height: 10,),



                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 55,
                    child: TextField(
                      controller: controller2,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        hintText: 'Confirm Password',
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

                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Both passwords must match",
                    style: TextStyle(color: AppColors.lightGrey, fontSize: 16),
                  ),
                ),










                SizedBox(height: 55.w,),

                Center(
                  child: CustomElevatedButton(
                    backgroundColor: AppColors.blue,
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.passwordchangedsuccessfully);
                    },
                    label: "Reset Password",
                    alignment: Alignment.center,
                    height: 13.w,
                    width: 90.w,
                    borderRadius: 10.w,
                  ),
                ),











              ],
            ),
          ),
        ));
  }
}
