import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../03controller/cubit/auth/authcubit.dart';
import '../../../03controller/cubit/widget/languagecubit/languagecubit.dart';
import '../../../03controller/cubit/widget/languagecubit/languagestates.dart';
import '../../components/languagecard.dart';
import '../../styles/colors.dart';
import '../../utilities/resources/assets.dart';
import '../../utilities/resources/strings.dart';
import '../../widgets/custom_text.dart';


class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LanguageCubit languageCubit = LanguageCubit.get(context);
    AuthCubit authCubit = AuthCubit.get(context);
    return Scaffold(
      appBar: AppBar(
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
          text: AppStrings.profileLanguage,
          fontWeight: FontWeight.w500,
          fontSize: 20,
          height: 1.2,
          color: AppColors.kPrimaryBlack,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: BlocConsumer<LanguageCubit, LanguageStates>(
        listener: (context, state) {},
        builder: (context, state) => ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            itemBuilder: (BuildContext context, int index) =>
                LanguageSelectionCard(
                  onTap: () {
                    languageCubit.changeIconColor(
                      index,
                      token: AuthCubit.token,
                      userID: authCubit.userModel.id!,
                    );
                  },
                  flag: AppAssets.languagesFlags[index],
                  language: AppStrings.languages[index],
                  icon: languageCubit.iconType[index],
                  iconColor: languageCubit.iconColors[index],
                ),
            separatorBuilder: (BuildContext context, int index) =>
            const Divider(
              color: AppColors.midLightGrey,
            ),
            itemCount: AppStrings.languages.length),
      ),
    );
  }
}