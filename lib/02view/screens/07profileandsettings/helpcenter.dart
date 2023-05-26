import 'package:flutter/material.dart';

import '../../styles/colors.dart';
import '../../utilities/resources/strings.dart';
import '../../widgets/custom_text.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
        title: const CustomText(
          text: AppStrings.profileHelpCenter,
          fontWeight: FontWeight.w500,
          fontSize: 20,
          height: 1.2,
          color: AppColors.kPrimaryBlack,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}