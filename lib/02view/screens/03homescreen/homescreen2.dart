import 'package:flutter/material.dart';
import 'package:jobsque2/02view/components/searchrow.dart';
import 'package:jobsque2/02view/components/searchrow2.dart';
import 'package:sizer/sizer.dart';

import '../../../03controller/navigation/routes.dart';
import '../../styles/colors.dart';
import '../../utilities/resources/strings.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:
    Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.homescreen1);
          },
          icon: const Icon(Icons.arrow_back, color: AppColors.black),
        ),
        title: TextFormField(
          onFieldSubmitted: (value){
            Navigator.pushNamed(context, AppRoutes.homescreen3);

          },



          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.lightGrey.withOpacity(0.14),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(35),
            ),
            labelText: "Type something...",
            labelStyle: TextStyle(color: AppColors.lightGrey),

            

          ),



          obscureText:false ,


        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 30,
                decoration: BoxDecoration(color: AppColors.lightGrey.withOpacity(0.14)),
                child: Row(
                  mainAxisSize: MainAxisSize.max,


                  children:[
                  Text("Recent searches",
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

                    return SearchRow(string1: AppStrings.recentsearch[index],
                    onpressed1: (){
                      Navigator.pushNamed(context, AppRoutes.homescreen3);
                    },
                    );
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
                      Text("Popular searches",
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

                      return SearchRow2(string1: AppStrings.popularsearches[index1],
                        onpressed1: (){},
                      );
                    }

                ),
              ),






            ],
          ),
        ),
      ),











    ));
  }
}
