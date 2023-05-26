

import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';


import '../../02view/styles/colors.dart';
import '../../02view/widgets/custom_text.dart';

var snackBar = SnackBar(
  backgroundColor: AppColors.red,
  content: Row(
    children: [
      const Icon(
        Icons.highlight_remove,
        color: AppColors.white,
      ),
      SizedBox(
        width: 5.w,
      ),
      const CustomText(
        text: 'Wrong email or password!',
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.4,
      ),
    ],
  ),
);