import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

import '../../../03controller/cubit/widget/applyjobcubit/apply_job_cubit.dart';
import '../../components/jobpreviewcard.dart';
import '../../styles/colors.dart';
import '../../utilities/resources/assets.dart';
import '../../utilities/resources/strings.dart';
import '../../widgets/custom_text.dart';

class RejectedJobsTab extends StatelessWidget {
  const RejectedJobsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ApplyJobCubit applyJobCubit = ApplyJobCubit.get(context);
    if (applyJobCubit.appliedRejectedJobs.isEmpty) {
      return SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 10.w),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppAssets.appliedJobNoActivesImage,
                    width: 50.w,
                    height: 50.w,
                  ),
                  SizedBox(height: 3.w),
                  const CustomText(
                    text: AppStrings.appliedJobNoActivesTitle,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    height: 1.4,
                    color: AppColors.textsBlack,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 2.w),
                  const CustomText(
                    text: AppStrings.appliedJobNoActivesSubTitle,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    height: 1.4,
                    color: AppColors.grey,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      return CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => JobPreviewCard(
                jobModel: applyJobCubit.appliedRejectedJobs[index],
                saveOnPressed: (){},
              ),
              childCount: applyJobCubit.appliedRejectedJobs.length,
            ),
          ),
        ],
      );
    }
  }
}