import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sizer/sizer.dart';

import '../../../03controller/navigation/routes.dart';
import '../../components/bottomsheetmessages.dart';
import '../../styles/colors.dart';

class Messages3 extends StatelessWidget {
  const Messages3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.messages1);
          },
          icon: const Icon(Icons.arrow_back, color: AppColors.black),
        ),
        title: Align(
          alignment: Alignment.centerRight,
          child:
          Row(
            children: [
              Image.asset(
                  "assets/images/01_onboarding/onboarding/onboarding1/Logo.png"),

              Text("Twitter"),

              Row(
                mainAxisSize: MainAxisSize.max,

                children: [

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: InkWell(
                      onTap: (){
                        showMaterialModalBottomSheet(

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft:Radius.circular(15.w),
                                topRight: Radius.circular(15.w),
                              )
                          ),

                          context: context, builder: (context) =>
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft:Radius.circular(15.w),
                                    topRight: Radius.circular(15.w),

                                  )
                              ),
                              height: 40.h,
                              child: BottomSheetCardMessages(),




                            ),
                        );








                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(

                          width: 50,
                          height: 60,
                          padding: EdgeInsets.all(5),





                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.lightGrey,
                              ),


                              shape: BoxShape.circle
                          ),
                          child: Icon(Icons.more_horiz,



                            color: Colors.black,


                            ),
                        ),
                        ),
                      ),
                    ),





                ],
              ),

            ],
          ),
        ),
      ),
      body: Column(

        children: [



        ],

      ),







    );
  }
}
