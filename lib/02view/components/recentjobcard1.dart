import 'package:flutter/material.dart';
import 'package:jobsque2/02view/components/jobtypecard1.dart';
import 'package:jobsque2/02view/styles/colors.dart';
import 'package:jobsque2/02view/widgets/custom_elevated_button.dart';
import 'package:sizer/sizer.dart';

import '../utilities/resources/assets.dart';
import 'jobtypecard.dart';

class RecentJobCard1 extends StatelessWidget {

  int index;

   RecentJobCard1({Key? key,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.offWhite,
        borderRadius: BorderRadius.circular(15),

      ),

      width: double.infinity,
      height: 110,

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 5),
        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Image.asset(
                          width: 25,
                          height: 25,
                          fit: BoxFit.cover,

                          AppAssets.zoom,
                        ),
                      ),),
                  ],
                ),
                Column(
                  children: [
                    Text("Senior UI Designer", style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                    ),),
                    SizedBox(height: 5,),
                    Text("Twitter . Jakarta,Indonesia",
                      style: TextStyle(
                        color: AppColors.lightGrey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.bookmark_remove_outlined,
                      color: Colors.blue,)
                  ],
                ),



              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                JobTypeCard1(
                  label: "Fulltime",

                ),
                JobTypeCard1(
                  label: "Remote",
                ),
                JobTypeCard1(
                  label: "Design",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("\$15K",style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),),
                        Text("/Month",style: TextStyle(
                          color: AppColors.lightGrey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),),
                      ],),



                  ],),

              ],
            ),






          ],



        ),
      ) ,

    );
  }
}
