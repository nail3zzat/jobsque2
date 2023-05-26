import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque2/02view/utilities/resources/strings.dart';

import 'package:sizer/sizer.dart';

import '../../../../03controller/cubit/widget/applyjobcubit/apply_job_States.dart';
import '../../../../03controller/cubit/widget/applyjobcubit/apply_job_cubit.dart';
import '../../../components/employee_card.dart';
import '../../../components/employee_model.dart';
import '../../../styles/colors.dart';
import '../../../utilities/resources/constants.dart';
import '../../../widgets/custom_text.dart';


class ApplyJobTab3 extends StatelessWidget {
  final List<EmployeeModel> employees;
  final List<String> positionList;

  const ApplyJobTab3({
    Key? key,
    required this.employees,
    required this.positionList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ApplyJobCubit applyJobCubit = ApplyJobCubit.get(context);
    return SingleChildScrollView(
      child: BlocConsumer<ApplyJobCubit,ApplyJobStates>(
        listener: (context,state){},
        builder: (context,state)=> SizedBox(
          height: 150.w,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 15.w,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text:
                            '${AppConstants.employees.length} ${AppStrings.applyJobPeopleNumberOfEmployees}',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            height: 1.4,
                            color: AppColors.kPrimaryBlack,
                          ),
                          CustomText(
                            text: applyJobCubit.jobType,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            height: 1.5,
                            color: AppColors.textsGrey,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 11.w,
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.lightGrey,
                        ),
                        borderRadius: BorderRadius.circular(10.w),
                      ),
                      child: DropdownButton(
                        value: applyJobCubit.jobType,
                        icon: const Icon(Icons.keyboard_arrow_down_rounded),
                        elevation: 0,
                        underline: const SizedBox(),
                        style: const TextStyle(
                          color: AppColors.kPrimaryBlack,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                        ),
                        items: positionList
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: CustomText(
                              text: value,
                              color: AppColors.kPrimaryBlack,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                            ),
                          );
                        }).toList(),
                        onChanged: (value) {
                          applyJobCubit.changeJobTypeThroughFilter(selectedType: value.toString());
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: List.generate(
                  employees.length,
                      (int index) =>
                      EmployeeCard(employeeModel: employees[index]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
