import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../styles/colors.dart';
import '../../utilities/resources/assets.dart';
import '../../widgets/custom_text.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        toolbarHeight: 10.w,

        elevation: 0,
        backgroundColor: Colors.lightBlue.withOpacity(0.7),
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
          text: "Profile",
          fontSize: 26,
          fontWeight: FontWeight.w500,
          height: 1.2,
          color: AppColors.black,

        ),
        actions: [

          Image.asset(
            AppAssets.logout,
            height: 22,
            fit: BoxFit.fitHeight,
          ),
        ],
      ) ,














    );
  }
}
