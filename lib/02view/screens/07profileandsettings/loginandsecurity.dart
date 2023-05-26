import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../03controller/cubit/auth/authcubit.dart';
import '../../../03controller/navigation/routes.dart';
import '../../styles/colors.dart';
import '../../utilities/resources/strings.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/loginandsecuritywidget.dart';


class LoginAndSecurityScreen extends StatelessWidget {
  const LoginAndSecurityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = AuthCubit.get(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: AppColors.kPrimaryBlack,
              ),
            ),
            title: const CustomText(
              text: AppStrings.profileLoginAndSecurity,
              fontWeight: FontWeight.w500,
              fontSize: 20,
              height: 1.2,
              color: AppColors.kPrimaryBlack,
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 10.w,
              width: double.infinity,
              color: AppColors.offWhite2,
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: const Align(
                alignment: FractionalOffset.centerLeft,
                child: CustomText(
                  text: AppStrings.loginNSecurityAccountAccess,
                  color: AppColors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  height: 1.4,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                LoginAndSecurityWidget(
                  settingTitle: AppStrings.loginNSecurityEmailAddress,
                  onTap: (){
                    Navigator.pushNamed(context, AppRoutes.loginandsecurity);
                  },
                  description: authCubit.userModel.email,
                ),
                LoginAndSecurityWidget(
                  settingTitle: AppStrings.loginNSecurityPhoneNumber,
                  onTap: (){
                    Navigator.pushNamed(context, AppRoutes.loginandsecurity);
                  },
                ),
                LoginAndSecurityWidget(
                  settingTitle: AppStrings.loginNSecurityChangePassword,
                  onTap: (){
                    Navigator.pushNamed(context, AppRoutes.loginandsecurity);
                  },
                ),
                LoginAndSecurityWidget(
                  settingTitle: AppStrings.loginNSecurity2StepVerification,
                  onTap: (){},
                  description: 'Non Active',
                ),
                LoginAndSecurityWidget(
                  settingTitle: AppStrings.loginNSecurityFaceID,
                  onTap: (){},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}