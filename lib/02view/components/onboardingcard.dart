import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';

import '../styles/colors.dart';
import '../utilities/resources/strings.dart';
import '../widgets/custom_text.dart';

class OnBoardingCard extends StatelessWidget {
  final String imagePath;
  final String subtext;
  final String pattern;
  final String mainText;
  const OnBoardingCard({Key? key,
    required this.imagePath,

    required this.pattern,
    required this.subtext,
    required this.mainText,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(height: 10,),
        Expanded(
          flex: 6,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                  fit: BoxFit.cover,
                  imagePath
                  //"assets/images/01_onboarding/onboarding/onboarding1/Background_1.png"
            )
                ,

            ],
          ),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: [
                EasyRichText(
                  mainText,
                  defaultStyle: TextStyle(
                    color: AppColors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                  ),
                  patternList: [
                    EasyRichTextPattern(
                      targetString: pattern,
                      style: TextStyle(color: AppColors.blue),
                    ),
                  ],
                ),
                CustomText(
                  text: subtext,
                  color: AppColors.lightGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
