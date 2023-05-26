import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque2/02view/utilities/resources/strings.dart';

import 'package:sizer/sizer.dart';


import '../../../01model/jobmodel/jobmodel.dart';
import '../../../03controller/cubit/widget/applyjobcubit/apply_job_States.dart';
import '../../../03controller/cubit/widget/applyjobcubit/apply_job_cubit.dart';
import '../../../03controller/navigation/routes.dart';
import '../../components/job_type_card.dart';
import '../../styles/colors.dart';
import '../../utilities/resources/assets.dart';
import '../../utilities/resources/constants.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text.dart';
import 'job_detail_tabs/01_apply_job_tab.dart';
import 'job_detail_tabs/02_apply_job_tab.dart';
import 'job_detail_tabs/03_apply_job_tab.dart';

class ApplyJobScreen extends StatelessWidget {

  JobModel? jobModel;
   ApplyJobScreen({Key? key,
     this.jobModel,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ApplyJobCubit applyJobCubit = ApplyJobCubit.get(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.iconsBlack,
          ),
        ),
        centerTitle: true,
        title: const CustomText(
          text: AppStrings.jobDetail,
          fontSize: 20,
          fontWeight: FontWeight.w500,
          height: 1.2,
          color: AppColors.kPrimaryBlack,
        ),
        actions: [
          BlocConsumer<ApplyJobCubit,ApplyJobStates>(
              listener: (context,state){},
              builder: (context,state)=>IconButton(
                onPressed: () {
                  applyJobCubit.changeSaveIcon();
                },
                padding: EdgeInsets.only(right: 3.w),
                icon: Image.asset(applyJobCubit.initialSaveIcon),
              ),
          ),

        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              height: 190.w,
              child: DefaultTabController(
                length: 3,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 2.w),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        AppAssets.twitterLogo,
                        width: 13.w,
                        height: 13.w,
                      ),
                      SizedBox(height: 3.w,),
                      const CustomText(
                        text: AppStrings.applyJobTitle,
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        height: 1.2,
                        color: AppColors.kPrimaryBlack,
                      ),
                      const CustomText(
                        text:
                            '${AppStrings.applyJobLocationCompany} • ${AppStrings.applyJobLocationCountry}, ${AppStrings.applyJobLocationCity} ',
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        height: 1.5,
                        color: AppColors.kPrimaryBlack,
                      ),
                      SizedBox(height: 4.w,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const JobTypeCard(
                            label: AppStrings.applyJobType1,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2.w),
                            child: const JobTypeCard(
                              label: AppStrings.applyJobType2,
                            ),
                          ),
                          const JobTypeCard(
                            label: AppStrings.applyJobType3,
                          ),
                        ],
                      ),
                      SizedBox(height: 6.w,),
                      Container(
                        height: 10.w,
                        padding: EdgeInsets.all((1 / 2).w),
                        decoration: BoxDecoration(
                          color: AppColors.whiteGrey,
                          borderRadius: BorderRadius.circular(10.w),
                        ),
                        child: TabBar(
                          indicator: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.w),
                            ),
                            color: AppColors.kLightDarkBlue,
                          ),
                          tabs: List.generate(
                            3,
                            (index) => Tab(
                              icon: CustomText(
                                text: AppStrings.applyJobTab[index],
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                height: 1.4,
                              ),
                            ),
                          ),
                          onTap: (int index) {},
                          labelColor: AppColors.white,
                          unselectedLabelColor: AppColors.textsGrey,
                        ),
                      ),
                      SizedBox(height: 7.w,),
                      Expanded(
                        child: TabBarView(
                          children: [
                            const ApplyJobTab1(
                              jobDescription: AppStrings.applyJobDescriptionSubTitle,
                              requiredSills: AppStrings.applyJobRequiredSkills,
                            ),
                            const ApplyJobTab2(
                              email: AppStrings.applyJobCompanyEmail,
                              website: AppStrings.applyJobCompanyWebSite,
                              aboutCompany: AppStrings.applyJobCompanyAboutCompanySubTitle,
                            ),
                            ApplyJobTab3(
                              employees: AppConstants.employees,
                              positionList: AppStrings.applyJobPeopleFilterItems,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              width: double.infinity,
              height: 20.w,
              decoration: BoxDecoration(
                //color: Colors.white.withOpacity(0.5),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0.3),
                    Colors.white.withOpacity(0.7),
                  ],
                )
              ),
              child: Padding(
                padding: EdgeInsets.all(4.w),
                child: CustomElevatedButton(
                  onPressed: () {
                     Navigator.pushNamed(context, AppRoutes.bioDataScreen);
                  },
                  label: AppStrings.applyJobApplyNowButton,
                  width: 88.w,
                  alignment: Alignment.center,
                  height: 13.w,
                  borderRadius: 10.w,
                  backgroundColor: AppColors.kPrimaryColor,
                  labelFontSize: 16,
                  labelFontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
