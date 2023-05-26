import 'package:flutter/material.dart';
import 'package:jobsque2/02view/utilities/resources/assets.dart';
import 'package:sizer/sizer.dart';

import '../styles/colors.dart';

import '../widgets/custom_elevated_button_ver2.dart';

class Message3BottomSheet extends StatelessWidget {
  const Message3BottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 5.w,
              ),
              CustomElevatedButtonVer2(
                onPressed: () {},
                label: 'Visit job post',
                icon: Image.asset(
                  AppAssets.briefcase,
                  height: 44,
                  fit: BoxFit.cover,
                ),
                backgroundColor: AppColors.white,
                iconColor: AppColors.iconsBlack,
                labelColor: AppColors.kPrimaryBlack,
                width: double.infinity,
                height: 12.w,
                borderColor: AppColors.lightGrey,
                borderRadius: 10.w,
                suffixIcon: Icons.keyboard_arrow_right,
                suffixIconColor: AppColors.iconsBlack,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
              SizedBox(
                height: 4.w,
              ),
              CustomElevatedButtonVer2(
                onPressed: () {},
                label: 'View my application',
                icon: Image.asset(
                  AppAssets.note,
                  height: 44,
                  fit: BoxFit.cover,
                ),
                backgroundColor: AppColors.white,
                iconColor: AppColors.iconsBlack,
                labelColor: AppColors.kPrimaryBlack,
                width: double.infinity,
                height: 12.w,
                borderColor: AppColors.lightGrey,
                borderRadius: 10.w,
                suffixIcon: Icons.keyboard_arrow_right,
                suffixIconColor: AppColors.iconsBlack,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
              SizedBox(
                height: 4.w,
              ),
              CustomElevatedButtonVer2(
                onPressed: () {},
                label: 'Mark as unread',
                icon: Image.asset(
                  AppAssets.sms,
                  height: 44,
                  fit: BoxFit.cover,
                ),
                backgroundColor: AppColors.white,
                iconColor: AppColors.iconsBlack,
                labelColor: AppColors.kPrimaryBlack,
                width: double.infinity,
                height: 12.w,
                borderColor: AppColors.lightGrey,
                borderRadius: 10.w,
                suffixIcon: Icons.keyboard_arrow_right,
                suffixIconColor: AppColors.iconsBlack,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
              SizedBox(
                height: 4.w,
              ),
              CustomElevatedButtonVer2(
                onPressed: () {},
                label: 'Mute',
                icon: Image.asset(
                  AppAssets.note,
                  height: 44,
                  fit: BoxFit.cover,
                ),
                backgroundColor: AppColors.white,
                iconColor: AppColors.iconsBlack,
                labelColor: AppColors.kPrimaryBlack,
                width: double.infinity,
                height: 12.w,
                borderColor: AppColors.lightGrey,
                borderRadius: 10.w,
                suffixIcon: Icons.keyboard_arrow_right,
                suffixIconColor: AppColors.iconsBlack,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
              SizedBox(
                height: 4.w,
              ),
              CustomElevatedButtonVer2(
                onPressed: () {},
                label: 'Archive',
                icon: Image.asset(
                  AppAssets.import,
                  height: 44,
                  fit: BoxFit.cover,
                ),
                backgroundColor: AppColors.white,
                iconColor: AppColors.iconsBlack,
                labelColor: AppColors.kPrimaryBlack,
                width: double.infinity,
                height: 12.w,
                borderColor: AppColors.lightGrey,
                borderRadius: 10.w,
                suffixIcon: Icons.keyboard_arrow_right,
                suffixIconColor: AppColors.iconsBlack,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
              SizedBox(
                height: 4.w,
              ),
              CustomElevatedButtonVer2(
                onPressed: () {},
                label: 'Delete conversation',
                icon: Image.asset(
                  AppAssets.trash,
                  height: 44,
                  fit: BoxFit.cover,
                ),
                backgroundColor: AppColors.white,
                iconColor: AppColors.iconsBlack,
                labelColor: AppColors.kPrimaryBlack,
                width: double.infinity,
                height: 12.w,
                borderColor: AppColors.lightGrey,
                borderRadius: 10.w,
                suffixIcon: Icons.keyboard_arrow_right,
                suffixIconColor: AppColors.iconsBlack,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
