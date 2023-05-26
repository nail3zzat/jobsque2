import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../03controller/navigation/routes.dart';
import '../../styles/colors.dart';
import '../../utilities/resources/assets.dart';
import '../../utilities/resources/strings.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/text_inkwell.dart';

class ForgetPassword extends StatelessWidget {

  TextEditingController controller1 =TextEditingController();

  TextEditingController controller2 =TextEditingController();
   ForgetPassword({Key? key}) : super(key: key);

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
                "Reset Password",
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
                "Enter the email address you used when you\njoined and we’ll send you instructions to reset\nyour password.",
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
                  controller: controller1,
                  style: TextStyle(
                    color: AppColors.lightGrey,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter your email....',
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
            SizedBox(height: 72.w,),

            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                TextInkwell(
                  alignment: MainAxisAlignment.center,
                  labelText: "You remember your password  ",
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.signIn);
                  },
                  directoryText: "Login",
                  directoryColor: AppColors.blue,
                  labelColor: AppColors.lightGrey,
                ),




                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: CustomElevatedButton(
                    backgroundColor: AppColors.blue,
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.checkmail);
                    },
                    label: "Request password reset",
                    alignment: Alignment.center,
                    height: 13.w,
                    width: 90.w,
                    borderRadius: 10.w,
                  ),
                ),

              ],
            )









          ],
        ),
      ),
    ));
  }
}
