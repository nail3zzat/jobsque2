import 'package:flutter/material.dart';
import 'package:jobsque2/02view/components/bottomnavigationbar.dart';
import 'package:jobsque2/02view/components/jobcard.dart';

import '../../../03controller/cubit/auth/authcubit.dart';
import '../../../03controller/cubit/widget/homecubit/homecubit.dart';
import '../../../03controller/cubit/widget/savedcubit/savedcubit.dart';
import '../../../03controller/navigation/routes.dart';
import '../../components/recentjobcard.dart';
import '../../styles/colors.dart';
import '../../utilities/resources/strings.dart';

class HomeScreen1 extends StatelessWidget {



  const HomeScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

   // HomeCubit homeCubit = HomeCubit.get(context);
    //SavedCubit savedCubit = SavedCubit.get(context);
    AuthCubit authCubit = AuthCubit.get(context);
    return SafeArea(
      child: Scaffold(

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,

              children: [
                SizedBox(height: 10,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                          Text(
                            '${AppStrings.homeScreenTitle}${authCubit.userModel.name}👋',
                            style: TextStyle(color: AppColors.black,
                                fontSize: 24),
                          ),

                        ],),

                        Text(
                          "Create a better future for yourself here",
                          style: TextStyle(
                              color: AppColors.lightGrey, fontSize: 15),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(

                          height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,

                            ),
                            child: Icon(Icons.notifications)),


                      ],
                    )



                  ],
                ),




                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 10),
                  child: TextFormField(
                    onTap: (){

                      Navigator.pushNamed(context, AppRoutes.homescreen2);
                    },

                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.lightGrey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      labelText: "Search",

                    ),



                    obscureText:false ,


                  ),
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Suggested Job",
                      style: TextStyle(color: AppColors.black,
                          fontSize: 18),),
                    InkWell(
                      onTap: () {

                        //Navigator.pushNamed(context, AppRoutes.forgetpassword);
                      },
                      child: Text(
                        "View all",
                        style: TextStyle(
                          color: AppColors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),

                JobCard(),
                SizedBox(height: 10,),

                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Recent Job",style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),),
                    InkWell(
                      onTap: (){},
                      child: Text("View all",style: TextStyle(
                        color: AppColors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),),
                    ),
                  ],),

                RecentJobCard(),
                RecentJobCard(),
                RecentJobCard(),

              ],


            ),
          ),
        ),


        

















      ),
    );
  }
}
