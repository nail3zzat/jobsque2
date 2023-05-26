import 'package:flutter/material.dart';
import 'package:jobsque2/02view/styles/colors.dart';
import 'package:sizer/sizer.dart';

import '../../01model/countrymodel/countrymodel.dart';
import '../widgets/custom_text.dart';

class CountryCard extends StatelessWidget {
  final CountryModel? countryModel;
  Color? borderColor;
  Color? fillColor;
  final GestureTapCallback? onTap;


   CountryCard({Key? key, this.countryModel,this.borderColor,this.fillColor,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: EdgeInsets.all(1.w),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            height: 12.w,
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            decoration: BoxDecoration(
              border: Border.all(
                color: borderColor?? AppColors.lightGrey,
              ),
              borderRadius: BorderRadius.circular(7.w),
              color: fillColor?? AppColors.offWhite,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  countryModel!.flag ?? '',
                  width: 8.w,
                  height: 8.w,
                ),
                SizedBox(
                  width: 3.w,
                ),
                CustomText(
                  text: countryModel!.countryName ?? '',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 1.3,
                  color: AppColors.black,
                ),
              ],
            ),
          ),
        ),
      );
  }
}
