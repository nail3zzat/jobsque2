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

class BottomSheetCard extends StatelessWidget {


  const BottomSheetCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ApplyJobCubit applyJobCubit = ApplyJobCubit.get(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,

      appBar:AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.iconsBlack,
          ),
        ),
        
        actions: [
          InkWell(
            child: Text(
              "\nReset",
              style: TextStyle(
                color: AppColors.blue,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
        centerTitle: true,
        title: const CustomText(
          text: "Set Filter",
          fontSize: 20,
          fontWeight: FontWeight.w500,
          height: 1.2,
          color: AppColors.kPrimaryBlack,
        ),
        
        

      ),


      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              Row(
                children: const [
                  CustomText(
                    text: "Job Title",
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.3,
                    color: AppColors.black,
                  ),

                ],
              ),
              SizedBox(height: 2.w,),
              CustomTextField1(

                hintColor: Colors.black,



                borderRadius: 3.w,
                enabledBorderColor: AppColors.midLightGrey,
                focusedBorderColor: AppColors.kPrimaryColor,
                prefixIcon: ImageIcon(
                  AssetImage("assets/images/homescreen/03_applied.png"),
                  color: Colors.black,

                ),


              ),
              SizedBox(height: 5.w,),
              Row(
                children: const [
                  CustomText(
                    text: "Location",
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.3,
                    color: AppColors.black,
                  ),

                ],
              ),
              SizedBox(height: 2.w,),
              CustomTextField1(
                hintColor: Colors.black,


                borderRadius: 3.w,
                enabledBorderColor: AppColors.midLightGrey,
                focusedBorderColor: AppColors.kPrimaryColor,
                prefixIcon: ImageIcon(

                  AssetImage("assets/images/homescreen/location.png",

                  ),
                  color: Colors.black,


                ),






              ),
              SizedBox(height: 2.w,),

              CustomText(
                text: "Salary",
                fontWeight: FontWeight.w400,
                fontSize: 16,
                height: 1.3,
                color: AppColors.kPrimaryBlack,
              ),

              Container(
                width: 200,
                height: 60,
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.lightGrey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child:
                    Row(children: [
                      ImageIcon(
                          AssetImage(
                              "assets/images/homescreen/dollar-circle.png",),

                      ),
                      SizedBox(width: 10,),

                      Expanded(child: DropdownButton1()),

                    ],),




              ),
              SizedBox(height: 2.w,),
              CustomText(
                text: "Job Type",
                fontWeight: FontWeight.w400,
                fontSize: 16,
                height: 1.3,
                color: AppColors.kPrimaryBlack,
              ),

              SizedBox(height: 2.w,),

              Container(
                margin: EdgeInsets.only(right: 20),
                width: 100,

                child: Row(


                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    JobTypeCard2(label: 'Full Time',),
                    SizedBox(width: 10,),
                    JobTypeCard2(label: 'Remote',),
                    SizedBox(width: 10,),
                    JobTypeCard2(label: 'Contract',),
                  ],
                ),
              ),

              SizedBox(height: 3.w,),

              Container(
                margin: EdgeInsets.only(right: 20),
                width: 100,

                child: Row(


                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    JobTypeCard2(label: 'Part Time',
                    ),
                    SizedBox(width: 10,),
                    JobTypeCard2(label: 'Onsite',),
                    SizedBox(width: 10,),
                    JobTypeCard2(label: 'Internship',),
                  ],
                ),
              ),





              SizedBox(height: 8.w,),

              CustomElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.typeOfWorkScreen);
                },
                label: "Next",
                width: 88.w,
                alignment: Alignment.center,
                height: 13.w,
                borderRadius: 10.w,
                backgroundColor: AppColors.kPrimaryColor,
                labelFontSize: 16,
                labelFontWeight: FontWeight.w500,
              ),



            ],
          ),
        ),
      ),
    );
  }
}
