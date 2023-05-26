import 'package:flutter/material.dart';
import 'package:jobsque2/02view/components/searchrow.dart';
import 'package:jobsque2/02view/components/searchrow2.dart';
import 'package:sizer/sizer.dart';

import '../../../03controller/navigation/routes.dart';
import '../../components/notificationcard.dart';
import '../../styles/colors.dart';
import '../../utilities/resources/strings.dart';
import '../../widgets/custom_text.dart';

class Notification extends StatelessWidget {
  const Notification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const CustomText(
              text: "Notification",
              fontSize: 20,
              fontWeight: FontWeight.w500,
              height: 1.2,
              color: AppColors.black,
            ),
            toolbarHeight: 40,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.locationofwork);
              },

              icon: const Icon(
                Icons.arrow_back,
                color: AppColors.black,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Container(
                  height: 30,
                  decoration: BoxDecoration(color: AppColors.lightGrey.withOpacity(0.14)),
                  child: Row(
                      mainAxisSize: MainAxisSize.max,


                      children:[
                        Text("New",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: AppColors.lightGrey,
                            fontSize: 16,

                          ),),

                      ]

                  ),
                ),
                SizedBox(height: 10,),

                SizedBox(
                  width: double.infinity,
                  height: 50.w,
                  child: ListView.builder(
                      itemCount: AppStrings.recentsearch.length,

                      itemBuilder:(context,index){

                        return NotificationCard(index: index,);
                      }

                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 30,
                  decoration: BoxDecoration(color: AppColors.lightGrey.withOpacity(0.14)),
                  child: Row(
                      mainAxisSize: MainAxisSize.max,


                      children:[
                        Text("Yesterday",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: AppColors.lightGrey,
                            fontSize: 16,

                          ),),

                      ]

                  ),
                ),
                SizedBox(height: 20,),

                SizedBox(
                  width: double.infinity,
                  height: 50.w,
                  child: ListView.builder(
                      itemCount: AppStrings.popularsearches.length,

                      itemBuilder:(context,index1){

                        return NotificationCard(index: index1,);
                      }

                  ),
                ),






              ],
            ),
          ),











        ));
  }
}
