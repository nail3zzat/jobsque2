import 'package:flutter/material.dart';
import 'package:jobsque2/02view/components/savedjobcard.dart';
import 'package:sizer/sizer.dart';


import '../../styles/colors.dart';
import '../../utilities/resources/strings.dart';
import '../../widgets/custom_text.dart';

class SaveJob extends StatelessWidget {
  const SaveJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.black,
          ),
        ),
        centerTitle: true,
        title: const CustomText(
          text: "Saved",
          fontSize: 20,
          fontWeight: FontWeight.w500,
          height: 1.2,
          color: AppColors.black,
        ),
      ),


      body: SingleChildScrollView(
        child: Column(
          children: [
          Container(
            color: AppColors.midLightGrey,
            child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,


                children:[
                  Text(AppStrings.searchresult,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: AppColors.lightGrey,
                      fontSize: 16,

                    ),),






                ]

            ),
          ),

            SizedBox(height: 10.w,),
            Container(

              height: 200.w,
              child: ListView.builder(
                  itemCount: AppStrings.popularsearches.length-1,

                  itemBuilder:(context,index1){

                    return SavedJobCard(index: index1,)

                    ;
                  }

              ),
            ),
        ],),
      ),
    );
  }
}
