import 'package:flutter/material.dart';
import 'package:jobsque2/02view/components/jobtypecard1.dart';
import 'package:jobsque2/02view/styles/colors.dart';
import 'package:jobsque2/02view/widgets/custom_elevated_button.dart';
import 'package:sizer/sizer.dart';

import '../utilities/resources/assets.dart';
import 'jobtypecard.dart';

class SavedJobCard extends StatelessWidget {
  int index;

   SavedJobCard({Key? key,required this.index}) : super(key: key);

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

                          AppAssets.savedjobs[index],
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
                    IconButton(
                  icon:  Icon(Icons.more_horiz),

                      color: Colors.black, onPressed: () {
                      showModalBottomSheet<void>(
                        // context and builder are
                        // required properties in this widget
                        context: context,
                        builder: (BuildContext context) {
                          // we set up a container inside which
                          // we create center column and display text

                          // Returning SizedBox instead of a Container
                          return Container(
                            height: 200,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:  [
                                  Container(

                                    width:250,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(width: 1,color: AppColors.offWhite)
                                    ),
                                    child:
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                       Row(
                                         children: [
                                         ImageIcon(
                                           AssetImage("assets/images/homescreen/assets/images/savedjob/export_2.png"),),

                                         Text("Apply Job"),
                                       ],),

                                        Icon(Icons.arrow_forward_ios),




                                      ],),
                                  ),
                                  Container(

                                    width:250,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(width: 1,color: AppColors.offWhite)
                                    ),
                                    child:
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            ImageIcon(
                                              AssetImage("assets/images/homescreen/assets/images/savedjob/export_2.png"),),

                                            Text("Share via"),
                                          ],),

                                        Icon(Icons.arrow_forward_ios),




                                      ],),
                                  ),
                                  Container(

                                    width:250,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(width: 1,color: AppColors.offWhite)
                                    ),
                                    child:
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            ImageIcon(
                                              AssetImage("assets/images/homescreen/assets/images/savedjob/export_2.png"),),

                                            Text("Cancel save"),
                                          ],),

                                        Icon(Icons.arrow_forward_ios),




                                      ],),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },

                      );
                    },
                    ),
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
