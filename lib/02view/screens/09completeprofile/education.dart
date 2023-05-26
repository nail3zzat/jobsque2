import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'package:sizer/sizer.dart';

import '../../../03controller/validation/validation.dart';

import '../../components/educationcard.dart';
import '../../components/file_model.dart';
import '../../components/uploaded_doc_preview.dart';
import '../../styles/colors.dart';
import '../../utilities/resources/assets.dart';
import '../../utilities/resources/strings.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_text_field.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  TextEditingController nameController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController titleController = TextEditingController();

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
              text: "Education",
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
                        text: "University *",
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
                        text: "Title",
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
                          validator: (value) => nameValidation(value),
                          controller: bioController,
                        ),
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      const CustomText(
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
                      SizedBox(
                        height: 5.w,
                      ),
                      const CustomText(
                        text: "End Year",
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        height: 1.3,
                        color: AppColors.kPrimaryBlack,
                      ),
                      SizedBox(
                        height: 1.5.w,
                      ),
                      CustomTextField(
                        controller: dateController2,
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
                            dateController2.text =
                                DateFormat.yMMM().format(value!);
                          });
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Date Should not be empty";
                          }
                        },
                      ),
                      SizedBox(height: 5.w),
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
