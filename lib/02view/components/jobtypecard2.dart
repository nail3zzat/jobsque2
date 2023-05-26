import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

import '../styles/colors.dart';
import '../widgets/custom_text.dart';

class JobTypeCard2 extends StatelessWidget {
  final String label;



  const JobTypeCard2({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.w),
      decoration: BoxDecoration(
        color: AppColors.white.withOpacity(.14),
        borderRadius: BorderRadius.circular(5.w),
        border: Border.all(width: 1,color: AppColors.midLightGrey)
      ),
      child: CustomText(
        textAlign: TextAlign.center,
        text: label,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 2,
        color: AppColors.lightGrey,
      ),
    );
  }
}