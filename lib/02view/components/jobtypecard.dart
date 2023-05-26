import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

import '../styles/colors.dart';
import '../widgets/custom_text.dart';

class JobTypeCard extends StatelessWidget {
  final String label;


  const JobTypeCard({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.w),
      decoration: BoxDecoration(
        color: AppColors.vioblueopac.withOpacity(.14),
        borderRadius: BorderRadius.circular(5.w),
      ),
      child: CustomText(
        text: label,
        fontWeight: FontWeight.w400,
        fontSize: 12,
        height: 1.5,
        color: Colors.white,
      ),
    );
  }
}