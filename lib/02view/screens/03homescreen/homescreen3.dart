import 'package:flutter/material.dart';

import 'package:jobsque2/02view/styles/colors.dart';
import 'package:jobsque2/02view/utilities/resources/strings.dart';
import 'package:sizer/sizer.dart';

import '../../components/bottomsheetcard.dart';
import '../../components/recentjobcard1.dart';


class HomeScreen3 extends StatefulWidget {
  const HomeScreen3({Key? key}) : super(key: key);

  @override
  State<HomeScreen3> createState() => _HomeScreen3State();
}

class _HomeScreen3State extends State<HomeScreen3> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:scaffoldKey,


      appBar:AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back, color: AppColors.black),
        ),
        title: TextFormField(
          onTap: (){},

          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
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

      body:
      Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,


        children: [
          SizedBox(
            width: 100.w,
            height: 9.w,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: InkWell(
                    onTap: (){
                      scaffoldKey.currentState!.showBottomSheet((context) => SizedBox(
                        height: 120.h,
                        child: BottomSheetCard(),




                      ));




                    },
                    child: ImageIcon(

                      AssetImage("assets/images/homescreen/setting-4.png"),),
                  ),
                ),

                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 50,
                          width: 130,

                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 3, color: Colors.black26)],
                              borderRadius: BorderRadius.circular(100),
                              color: AppColors.vioblue),
                          child: Center(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Center(
                                    child: Text(
                                      AppStrings.homescreen3topbar[index],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17
                                      ),
                                    ),
                                  ),
                                ),
                                Icon(Icons.keyboard_arrow_down_outlined,
                                  color: Colors.white,)
                              ],
                            ),
                          ),

                        );
                      }),
                ),
              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Container(
              height: 10.w,
              color: AppColors.midLightGrey.withOpacity(0.14),
              child: Row(
                  mainAxisSize: MainAxisSize.max,


                  children:[
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text("Featuring 120+ jobs",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: AppColors.lightGrey,
                          fontSize: 16,

                        ),),
                    ),

                  ]

              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
                itemCount: 5,

                itemBuilder:(context,index1){

                  return RecentJobCard1(index: index1,)

                  ;
                }

            ),
          ),


        ],
      ),






    );
  }
}
