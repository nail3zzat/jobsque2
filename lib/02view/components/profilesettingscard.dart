import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';


import '../styles/colors.dart';
import '../widgets/custom_text.dart';

class ProfileSettingsCard extends StatelessWidget {
  final bool hasIcon;
  final GestureTapCallback? onTap;
  final String? icon;
  final String? title;

  const ProfileSettingsCard({
    Key? key,
    required this.hasIcon,
    this.onTap,
    this.title,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: double.infinity,
        height: 20.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (hasIcon) ...[
                    Container(
                      padding: EdgeInsets.all(1.w),
                      margin: EdgeInsets.only(right: 2.w),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.kBlue200,
                      ),
                      child: Image.asset(
                        icon??'',
                        width: 10.w,
                        fit: BoxFit.fill,

                      ),
                    ),
                  ],
                  Expanded(
                    child: CustomText(
                      text: title??'',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      height: 1.3,
                      color: AppColors.kPrimaryBlack,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_outlined,
                    size: 5.w,
                  ),
                ],
              ),
            ),
            const Divider(
              color: AppColors.midLightGrey,
            ),
          ],
        ),
      ),
    );
  }
}