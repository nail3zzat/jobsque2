import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../03controller/cubit/widget/applyjobcubit/apply_job_cubit.dart';
import '../../03controller/navigation/routes.dart';
import '../styles/colors.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_text.dart';

import '../widgets/custom_text_field1.dart';
import 'dropdownbutton1.dart';
import 'jobtypecard1.dart';
import 'jobtypecard2.dart';

class BottomSheetCardMessages extends StatelessWidget {


  const BottomSheetCardMessages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ApplyJobCubit applyJobCubit = ApplyJobCubit.get(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,




      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20,),


              Row(
                children: const [
                  CustomText(
                    text: "Message filters",
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    height: 1.3,
                    color: AppColors.black,
                  ),

                ],
              ),
              SizedBox(height: 5.w,),



              InkWell(
                onTap: (){},
                child: Container(
                  width: 200,
                  height: 60,
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.lightGrey,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child:
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [


                    CustomText(
                      text: "Unread",
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      height: 1.3,
                      color: AppColors.black,
                    ),



                    Icon(Icons.arrow_forward_ios)

                  ],),




                ),
              ),
              SizedBox(height: 4.w,),

              InkWell(
                onTap: (){},
                child: Container(
                  width: 200,
                  height: 60,
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.lightGrey,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child:
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [


                      CustomText(
                        text: "Spam",
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        height: 1.3,
                        color: AppColors.black,
                      ),



                      Icon(Icons.arrow_forward_ios)

                    ],),




                ),
              ),
              SizedBox(height: 4.w,),

              InkWell(
                onTap: (){},
                child: Container(
                  width: 200,
                  height: 60,
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.lightGrey,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child:
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [


                      CustomText(
                        text: "Archived",
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        height: 1.3,
                        color: AppColors.black,
                      ),



                      Icon(Icons.arrow_forward_ios)

                    ],),




                ),
              ),












            ],
          ),
        ),
      ),
    );
  }
}
