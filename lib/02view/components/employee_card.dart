import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

import '../styles/colors.dart';
import '../widgets/custom_text.dart';
import 'employee_model.dart';

class EmployeeCard extends StatelessWidget {
  final EmployeeModel employeeModel;

  const EmployeeCard({
    Key? key,
    required this.employeeModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.w,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(employeeModel.photo ?? ''),
          radius: 5.w,
        ),
        title: CustomText(
          text: employeeModel.name ?? '',
          fontWeight: FontWeight.w500,
          fontSize: 14,
          height: 1.4,
          color: AppColors.black,
        ),
        subtitle: Padding(
          padding: EdgeInsets.only(top: (3/2).w),
          child: CustomText(
            text: '${employeeModel.jobDegree} ${employeeModel.jobTitle} at ${employeeModel.workCompany}',
            fontWeight: FontWeight.w400,
            fontSize: 12,
            height: 1.5,
            color: AppColors.grey,
          ),
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const CustomText(
              text:'Work During',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              height: 1.5,
              color: AppColors.grey,
            ),
            CustomText(
              text: '${employeeModel.workDuring} Years',
              fontWeight: FontWeight.w500,
              fontSize: 12,
              height: 1.5,
              color: AppColors.kPrimaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
