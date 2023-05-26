import 'package:flutter/material.dart';
import 'package:jobsque2/02view/styles/colors.dart';
import 'package:jobsque2/02view/widgets/custom_elevated_button.dart';
import 'package:sizer/sizer.dart';

import '../../01model/jobmodel/jobmodel.dart';
import '../utilities/resources/assets.dart';
import 'jobtypecard.dart';

class JobCard extends StatelessWidget {

  final Color? fillColor;
  final JobModel? jobModel;
  final VoidCallback? saveOnPressed;


  const JobCard({Key? key,

    this.fillColor,
    this.jobModel,
    this.saveOnPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.vioblue,
        borderRadius: BorderRadius.circular(15),

      ),

      width: 70.w,
      height: 40.w,

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
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

                            jobModel?.image ??AppAssets.zoom,
                          ),
                        ),),
                  ],
                ),
                Column(
                  children: [
                    Text("Product Desiner", style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                    ),),
                    SizedBox(height: 5,),
                    Text("Zoom.United States",
                      style: TextStyle(
                        color: AppColors.vioblueopac.withOpacity(0.14),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.bookmark_remove_outlined,color: Colors.white,)
                  ],
                ),



              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              JobTypeCard(
                label: "Fulltime",
              ),
              JobTypeCard(
                label: "Remote",
              ),
              JobTypeCard(
                label: "Design",
              ),

            ],
            ),
            SizedBox(height: 20,),





            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                Text("\$12K-15K",style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),),
                Text("/Month",style: TextStyle(
                  color: AppColors.vioblueopac.withOpacity(0.14),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),),
              ],),

        CustomElevatedButton(
          backgroundColor: AppColors.blue,
          onPressed: (){},
          label: "Apply now",
          labelFontSize: 12,

          labelColor: Colors.white,
          alignment: Alignment.center,
          height: 32,
          width: 96,
          borderRadius: 30,
        ),

            ],),
          ],



        ),
      ) ,

    );
  }
}
