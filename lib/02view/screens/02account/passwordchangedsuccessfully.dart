import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../03controller/navigation/routes.dart';
import '../../styles/colors.dart';
import '../../utilities/resources/assets.dart';
import '../../utilities/resources/strings.dart';
import '../../widgets/custom_elevated_button.dart';

class PasswordChangedSuccessfully extends StatelessWidget {
  const PasswordChangedSuccessfully({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child:


        Scaffold(

          appBar:AppBar(
            toolbarHeight: 40,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.forgetpassword);


              },
              icon: const Icon(Icons.arrow_back, color: AppColors.black,
              ),
            ),

          ),


          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: 41.w,
                width: 50.w,


                child: Image.asset(

                  fit: BoxFit.cover,
                  AppAssets.passwordchangedsuccesfully,

                ),
              ),
              SizedBox(height: 25,),

              Text(
                AppStrings.passwordchangedsuccesfully,
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  textAlign: TextAlign.center,
                  AppStrings.passwordchangedsuccesfullysub,
                  style: TextStyle(
                      color: AppColors.lightGrey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 40.w,),


              Padding(
                padding: const EdgeInsets.only(top: 75),
                child: CustomElevatedButton(
                  backgroundColor: AppColors.blue,
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.createnewpassword);
                  },
                  label: "Open email app",
                  alignment: Alignment.center,
                  height: 13.w,
                  width: 90.w,
                  borderRadius: 10.w,
                ),
              ),

            ],
          ),
        ));
  }
}
