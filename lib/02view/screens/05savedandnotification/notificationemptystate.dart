import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../03controller/navigation/routes.dart';
import '../../styles/colors.dart';
import '../../utilities/resources/assets.dart';
import '../../utilities/resources/strings.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text.dart';

class NotificationEmptyState extends StatelessWidget {
  const NotificationEmptyState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const CustomText(
            text: "Notification",
            fontSize: 20,
            fontWeight: FontWeight.w500,
            height: 1.2,
            color: AppColors.black,
          ),
          toolbarHeight: 40,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.locationofwork);
            },

            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.black,
            ),
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
                      AppAssets.nonewnotification,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    AppStrings.nonewnotification,
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
                      AppStrings.nonewnotificationsub,
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
