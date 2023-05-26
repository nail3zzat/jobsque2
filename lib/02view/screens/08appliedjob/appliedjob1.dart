import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque2/02view/screens/08appliedjob/rejectebjobtab.dart';
import 'package:sizer/sizer.dart';

import '../../../03controller/cubit/widget/applyjobcubit/apply_job_States.dart';
import '../../../03controller/cubit/widget/applyjobcubit/apply_job_cubit.dart';
import '../../styles/colors.dart';
import '../../utilities/resources/strings.dart';
import '../../widgets/custom_text.dart';
import 'activejobtab.dart';

class AppliedJob1 extends StatelessWidget {
  const AppliedJob1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const CustomText(
          text: AppStrings.appliedJobScreenTitle,
          fontWeight: FontWeight.w500,
          fontSize: 20,
          height: 1.2,
          color: AppColors.kPrimaryBlack,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: DefaultTabController(
        length: 2,
        child: Padding(
          padding: EdgeInsets.all(5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              TabBar(
                indicator: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.w),
                  ),
                  color: AppColors.kDarkBlue,
                ),
                tabs: List.generate(
                  AppStrings.appliedJobTabsTitles.length,
                      (index) => Tab(
                    icon: CustomText(
                      text: AppStrings.appliedJobTabsTitles[index],
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      height: 1.4,
                    ),
                  ),
                ),
                onTap: (int index) {},
                labelColor: AppColors.white,
                unselectedLabelColor: AppColors.kPrimaryBlack,
              ),
              Expanded(
                child: BlocConsumer<ApplyJobCubit,ApplyJobStates>(
                  listener: (context,state){},
                  builder: (context,state)=>const TabBarView(
                    children: [
                      ActiveJobsTab(),
                      RejectedJobsTab(),
                    ],
                  ),
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}