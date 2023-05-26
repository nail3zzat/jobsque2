import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'package:sizer/sizer.dart';

import '../../../03controller/cubit/auth/authcubit.dart';
import '../../../03controller/cubit/sharedpreferences/sharedprefscubit.dart';
import '../../../03controller/cubit/sharedpreferences/sharedprefsstates.dart';
import '../../../03controller/cubit/widget/applyjobcubit/apply_job_States.dart';
import '../../../03controller/cubit/widget/applyjobcubit/apply_job_cubit.dart';
import '../../../03controller/cubit/widget/signinloginbutton/signinbuttoncubit.dart';
import '../../../03controller/navigation/routes.dart';
import '../../../03controller/validation/validation.dart';

import '../../components/educationcard.dart';
import '../../components/employee_model.dart';
import '../../components/file_model.dart';
import '../../components/uploaded_doc_preview.dart';
import '../../styles/colors.dart';
import '../../utilities/resources/assets.dart';
import '../../utilities/resources/strings.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_text_field.dart';
import '../04applyJob/job_detail_tabs/03_apply_job_tab.dart';

class Education extends StatefulWidget {

  final List<String> positionList;
   Education({Key? key, required this.positionList,}) : super(key: key);

  @override
  State<Education> createState() => _EducationState();


}

class _EducationState extends State<Education> {
  TextEditingController nameController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController companynameController = TextEditingController();


  TextEditingController dateController1 = TextEditingController();
  TextEditingController dateController2 = TextEditingController();
  TextEditingController timeController = TextEditingController();

  TextEditingController statusController = TextEditingController();
  GlobalKey formKey = GlobalKey<FormState>();
  var scaffoldKey = GlobalKey<ScaffoldState>();
  bool bottomSheetEnabler = false;
  IconData floatingButtonIcon = Icons.task;


  @override
  Widget build(BuildContext context) {
    ApplyJobCubit applyJobCubit = ApplyJobCubit.get(context);

    SignInButtonCubit cubit1 = SignInButtonCubit.get(context);
    AuthCubit cubit2 = AuthCubit.get(context);
    SharedPCubit cubit3 = SharedPCubit.get(context);

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
              text: "Experience",
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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Form(
                key: formKey,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.w),
                      border: Border.all(

                        color: AppColors.lightGrey,
                      )),
                  padding: EdgeInsets.all( 3.w),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const CustomText(
                        text: "Position *",
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        height: 1.3,
                        color: AppColors.midLightGrey,
                      ),
                      SizedBox(
                        height: 1.5.w,
                      ),
                      SizedBox(
                        height: 13.w,
                        child: CustomTextField(
                          borderRadius: 3.w,
                          enabledBorderColor: AppColors.lightGrey,
                          focusedBorderColor: AppColors.kPrimaryColor,
                          prefixIcon: Icons.person_outline_rounded,
                          prefixIconColor: AppColors.lightGrey,
                          validator: (value) => nameValidation(value),
                          controller: nameController,
                        ),
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      const CustomText(
                        text: "Type of work",
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        height: 1.3,
                        color: AppColors.midLightGrey,
                      ),
                      SizedBox(
                        height: 1.5.w,
                      ),
    BlocConsumer<ApplyJobCubit,ApplyJobStates>(
    listener: (context,state){},
    builder: (context,state)=>SizedBox(
                        height: 13.w,
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
                          items: widget.positionList
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
    ),
                      SizedBox(
                        height: 5.w,
                      ),
                      const CustomText(
                        text: "Company name *",
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        height: 1.3,
                        color: AppColors.midLightGrey,
                      ),
                      SizedBox(
                        height: 1.5.w,
                      ),


                      SizedBox(
                        height: 13.w,
                        child: CustomTextField(
                          borderRadius: 3.w,
                          enabledBorderColor: AppColors.lightGrey,
                          focusedBorderColor: AppColors.kPrimaryColor,
                          prefixIcon: Icons.person_outline_rounded,
                          prefixIconColor: AppColors.lightGrey,
                          validator: (value) => nameValidation(value),
                          controller: companynameController,
                        ),
                      ),



                      SizedBox(
                        height: 5.w,
                      ),

                      const CustomText(
                        text: "Location",
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        height: 1.3,
                        color: AppColors.kPrimaryBlack,
                      ),
                      SizedBox(
                        height: 1.5.w,
                      ),
                      BlocConsumer<ApplyJobCubit,ApplyJobStates>(
                        listener: (context,state){},
                        builder: (context,state)=>SizedBox(
                          height: 13.w,
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
                            items: widget.positionList
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
                      ),
                      Row(
                        children: [
                          SizedBox(

                            child:
                            BlocConsumer<SharedPCubit, SharedPStates>(
                              listener: (context, state) {},
                              builder: (context, state) => Checkbox(

                                value: cubit3.isLoggedIn,
                                onChanged: (bool? newValue) {
                                  cubit3.storeIsLoggedInSharedPrefs(newValue!);
                                },
                              ),
                            ),
                          ),
                          Text(
                            "I am currently working in this role",
                            style: TextStyle(color: AppColors.black, fontSize: 16),
                          ),

                        ],
                      ),
                      SizedBox(height: 5.w),

                      CustomText(
                        text: "Start Year",
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        height: 1.3,
                        color: AppColors.midLightGrey,
                      ),
                      SizedBox(
                        height: 1.5.w,
                      ),


                      SizedBox(
                        height: 13.w,
                        child: CustomTextField(
                          controller: dateController1,
                          keyboardType: TextInputType.text,
                          hintText: "Date",hintColor: AppColors.lightGrey,
                          suffixIcon: Icons.calendar_month,
                          onTap: () {
                            showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.parse('2020-12-20'),
                                lastDate:
                                DateTime.parse('2023-12-20'))
                                .then((value) {
                              dateController1.text =
                                  DateFormat.yMMM().format(value!);
                            });
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Date Should not be empty";
                            }
                          },
                        ),
                      ),



                      CustomElevatedButton(
                        onPressed: () {
                          //Navigation
                        },
                        label: "Save",
                        width: 88.w,
                        alignment: Alignment.center,
                        height: 13.w,
                        borderRadius: 10.w,
                        backgroundColor: AppColors.kPrimaryColor,
                        labelFontSize: 16,
                        labelFontWeight: FontWeight.w500,
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 1,
                  (context, index) => Padding(
                padding: EdgeInsets.only(left: 5.w,right: 5.w,top: 3.w),
                child: UploadedDocPreview(
                  fileModel: FileModel(
                    name: 'The University of Arizone',
                    type: 'Bachelor of Art and Design\n2012 - 2015'
                    ,
                    photo: AppAssets.pdfLogo,

                  ),
                  onPressedEdit: () {},
                  onPressedDelete: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
