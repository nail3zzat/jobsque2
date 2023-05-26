import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../03controller/cubit/widget/locationofworkcubit/locationofworkcubit.dart';
import '../../../03controller/cubit/widget/locationofworkcubit/locationofworkstates.dart';
import '../../../03controller/cubit/widget/togglebutton/togglebutton.dart';
import '../../../03controller/navigation/routes.dart';
import '../../components/countrycard.dart';
import '../../styles/colors.dart';
import '../../utilities/resources/constants.dart';
import '../../utilities/resources/strings.dart';
import '../../widgets/custom_elevated_button.dart';

class LocationOfWork extends StatefulWidget {

   LocationOfWork({Key? key}) : super(key: key);

  @override
  State<LocationOfWork> createState() => _LocationOfWorkState();
}

class _LocationOfWorkState extends State<LocationOfWork> {


  @override
  Widget build(BuildContext context) {

    LocationOfWorkCubit cubit3 = LocationOfWorkCubit.get(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Stack(
          fit: StackFit.expand,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 12.w,
                  ),
                  Text(
                    AppStrings.workTypeQuestion,
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 2.w,
                  ),
                  Text(
                    AppStrings.workTypeQuestionsub,
                    style: TextStyle(
                        color: AppColors.lightGrey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 2.w,
                  ),


                  AnimatedToggle(

                    values: const [
                      AppStrings.workfromoffice,
                      AppStrings.remotework],
                    onToggleCallback: (value) {
                      setState(() {

                      });
                    },
                    buttonColor: const Color(0xFF0A3157),
                    backgroundColor: const Color(0xFFB5C1CC),
                    textColor: const Color(0xFFFFFFFF),
                  ),

                  Text(AppStrings.worktext,
                      style: TextStyle(
                          color: AppColors.lightGrey,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),



                  ),
                  SizedBox(height: 2.w,),





                  BlocConsumer<LocationOfWorkCubit, LocationOfWorkStates>(
                    listener: (BuildContext context, state) {},
                     builder: (BuildContext context, Object? state) {
                       return Wrap(
                         children: List.generate(
                             AppConstants.countries.length,
                                 (index) =>
                                 CountryCard(
                                   onTap: (){
                                     cubit3.countryCardColorChange(index);
                                   },
                                   fillColor:cubit3.fillColor[index] ,
                                   borderColor: cubit3.borderColor[index],

                                   countryModel: AppConstants.countries[index],
                                 ),
                         ),
                       );
                     },
                  ),


                ],
              ),
            ),
            Positioned(
              bottom: 3.w,
              right: 2.w,
              left: 2.w,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 3,horizontal: 5),
                child: CustomElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.accountfinish);
                  },
                  label: "Next",
                  width: 100.w,
                  alignment: Alignment.center,
                  height: 13.w,
                  borderRadius: 10.w,
                  backgroundColor: AppColors.blue,
                  labelFontSize: 16,
                  labelFontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
