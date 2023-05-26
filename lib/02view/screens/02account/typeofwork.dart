import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque2/01model/workcard/workcard.dart';
import 'package:jobsque2/02view/styles/colors.dart';
import 'package:jobsque2/02view/utilities/resources/assets.dart';
import 'package:jobsque2/02view/utilities/resources/strings.dart';
import 'package:jobsque2/03controller/cubit/widget/typeofworkcubit/typeofworkcubit.dart';
import 'package:sizer/sizer.dart';

import '../../../03controller/cubit/widget/typeofworkcubit/tupeofworkstates.dart';
import '../../../03controller/navigation/routes.dart';
import '../../widgets/custom_elevated_button.dart';

class TypeOfWork extends StatelessWidget {
  const TypeOfWork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TypeOfWorkCubit cubit = TypeOfWorkCubit.get(context);
    return SafeArea(
      child:
      Scaffold(
        body: Padding(
          padding: const EdgeInsets.all( 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,

            children: [
              SizedBox(height: 10,),
              
              Text(
                AppStrings.Whattypeofwork,
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10,),
              Text(
                AppStrings.Whattypeofworksub,
                style: TextStyle(
                    color: AppColors.lightGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(

                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.5,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 20,

                    ),
                    itemCount: AppStrings.workTypeTitles.length,
                    itemBuilder: (context, index) =>

                        BlocConsumer<TypeOfWorkCubit, TypeOfWorkStates>(
                          listener: (context, state) {},
                          builder: (context, state) =>GestureDetector(

                            onTap:
                                (){

                                  cubit.wtCardColorChange(index,title: AppStrings.workTypeTitles[index]);

                            },
                            child: Container(


                              padding: EdgeInsets.symmetric(horizontal: 14),
                              decoration: BoxDecoration(
                                border: Border.all(color: cubit.borderColor[index],),
                                color: cubit.fillColor[index],
                                borderRadius: BorderRadius.circular(10),
                              ),

                              child:
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,

                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,

                                        border: Border.all(color: AppColors.lightGrey)

                                    ),
                                    child: Image.asset(
                                      AppAssets.workTypePhotos[index],
                                      color: cubit.iconColor[index],

                                    ),
                                  ),

                                  Text(AppStrings.workTypeTitles[index]),
                                ],
                              ),
                            ),
                          ),
                        ),






                ),
              ),

              SizedBox(
                height: 15,
              ),
              CustomElevatedButton(
                backgroundColor: AppColors.blue,
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.locationofwork);
                },
                label: "Next",
                alignment: Alignment.center,
                height: 13.w,
                width: 90.w,
                borderRadius: 10.w,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
