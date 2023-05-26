import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../03controller/navigation/routes.dart';
import '../../styles/colors.dart';
import '../../utilities/resources/assets.dart';
import '../../utilities/resources/strings.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text.dart';

class SaveJobEmptyState extends StatelessWidget {
  const SaveJobEmptyState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 41.w,
                    width: 50.w,
                    child: Image.asset(
                      fit: BoxFit.cover,
                      AppAssets.savejobemptystate,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    AppStrings.nothingsaved,
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      textAlign: TextAlign.center,
                      AppStrings.nothingsavedsub,
                      style: TextStyle(
                          color: AppColors.lightGrey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
