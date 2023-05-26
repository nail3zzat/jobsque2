import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque2/02view/styles/colors.dart';
import 'package:jobsque2/02view/styles/colors.dart';
import 'package:jobsque2/02view/utilities/resources/assets.dart';
import 'package:jobsque2/02view/widgets/custom_elevated_button.dart';
import 'package:jobsque2/03controller/cubit/widget/cubitonboardingbutton/onboardingbuttoncubit.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../03controller/cubit/sharedpreferences/sharedprefscubit.dart';
import '../../../03controller/cubit/widget/cubitonboardingbutton/onboardingbuttonstates.dart';
import '../../../03controller/navigation/routes.dart';
import '../../styles/colors.dart';
import '../../styles/colors.dart';
import '../../utilities/resources/strings.dart';
import '../../widgets/custom_text.dart';
import '../../components/onboardingcard.dart';

class OnBoarding extends StatelessWidget {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    OnBoardingButtonCubit cubit = OnBoardingButtonCubit.get(context);
    SharedPCubit cubit1 = SharedPCubit.get(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 1,),

            Expanded(
              flex: 11,
              child: Stack(
                fit: StackFit.expand,
                children: [


                  PageView.builder(
                    controller: controller,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      cubit.changeButtonText(index);
                      cubit.pageIndex = index;
                      return OnBoardingCard(
                        mainText: AppStrings.onBoardingTexts[index],
                        subtext: AppStrings.onBoardingSubTexts[index],
                        pattern: AppStrings.onBoardingPatterns[index],
                        imagePath: AppAssets.onBoardingImages[index],
                      );
                    },
                  ),
                  Positioned(
                    top: 5,
                    left: 5,
                    right: 5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                            "assets/images/01_onboarding/onboarding/onboarding1/Logo.png"),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context,
                                AppRoutes.signUp);
                            cubit1.storeIsFirstTimeSharedPrefs();

                          },

                          child: CustomText(
                            text: AppStrings.skip,
                            color: AppColors.lightGrey,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: ScrollingDotsEffect(
                        dotHeight: 2.w,
                        activeDotColor: AppColors.blue,
                        dotColor: AppColors.kLightBlue,
                        dotWidth: 2.w,
                        spacing: 1.w,
                      ),
                    ),
                    BlocConsumer<OnBoardingButtonCubit, OnBoardingButtonStates>(
                      listener: (BuildContext context, state) {},
                      builder: (BuildContext context, Object? state) {
                        return CustomElevatedButton(
                          onPressed: () {
                            if (cubit.pageIndex == 2) {
                              cubit1.storeIsFirstTimeSharedPrefs();
                               Navigator.pushReplacementNamed(
                                  context,
                                  AppRoutes.signUp);
                            } else {
                              controller.nextPage(
                                  duration: Duration(milliseconds: 200),
                                  curve: Curves.decelerate);
                            }
                          },
                          label: cubit.buttonText,
                          width: 88.w,
                          alignment: Alignment.center,
                          height: 13.w,
                          borderRadius: 10.w,
                          labelFontSize: 16,
                          labelFontWeight: FontWeight.w500,
                          backgroundColor: AppColors.blue,
                        );
                      },
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
