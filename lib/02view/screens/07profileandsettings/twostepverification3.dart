import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sizer/sizer.dart';

import '../../../03controller/cubit/widget/twostepverificationcubit/twostepverificationcubit.dart';
import '../../../03controller/cubit/widget/twostepverificationcubit/twostepverificationstates.dart';
import '../../styles/colors.dart';
import '../../utilities/resources/strings.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text.dart';


class TwoStep6DigitVerificationScreen extends StatefulWidget {
  const TwoStep6DigitVerificationScreen({Key? key}) : super(key: key);

  @override
  State<TwoStep6DigitVerificationScreen> createState() => _TwoStep6DigitVerificationScreenState();
}

class _TwoStep6DigitVerificationScreenState extends State<TwoStep6DigitVerificationScreen> {

  TextEditingController phoneController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool value = false;

  @override
  Widget build(BuildContext context) {
    TwoStepVerificationCubit twoStepVerificationCubit = TwoStepVerificationCubit.get(context);
    /*twoStepVerificationCubit.counter =1;
    twoStepVerificationCubit.counterFunction();*/
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
          text: "Two-step verification",
          fontWeight: FontWeight.w500,
          fontSize: 20,
          height: 1.2,
          color: AppColors.kPrimaryBlack,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(5.w),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: [
                const CustomText(
                  text: AppStrings.TwoStepVerification6DCodeQ,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  height: 1.3,
                  color: AppColors.kPrimaryBlack,
                ),
                SizedBox(height: 2.w),
                const CustomText(
                  text: AppStrings.twoStepVerification6DCodeAuthQ,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  height: 1.4,
                  color: AppColors.grey,
                ),
                SizedBox(height: 3.w),
                PinCodeTextField(
                  appContext: context,
                  pastedTextStyle: const TextStyle(
                    color: AppColors.kPrimaryColor,
                    fontWeight: FontWeight.w400,
                  ),
                  length: 6,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 13.w,
                    fieldWidth: 13.w,
                    inactiveColor: AppColors.lightGrey,
                    inactiveFillColor: Colors.white,
                    selectedFillColor: Colors.white,
                    selectedColor: AppColors.kPrimaryColor,
                    borderWidth: 1.5,
                    activeFillColor: AppColors.white,
                    activeColor: AppColors.lightGrey,
                  ),
                  enableActiveFill: true,
                  cursorColor: AppColors.kPrimaryColor,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {},
                ),
                SizedBox(height: 3.w),
                Row(
                  children: [
                    const CustomText(
                      text: AppStrings.twoStepVerificationResendCode,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      height: 1.4,
                      color: AppColors.midLightGrey,
                    ),
                    BlocConsumer<TwoStepVerificationCubit,TwoStepVerificationStates>(
                      listener: (context,state){
                        if(state is RestartCounterState){
                          twoStepVerificationCubit.counter =1;
                          twoStepVerificationCubit.counterFunction();
                        }
                      },
                      builder: (context,state)=>CustomText(
                        text: '${60 - twoStepVerificationCubit.counter}s',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        height: 1.4,
                        color: AppColors.kPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              child: CustomElevatedButton(
                onPressed: () {},
                label: AppStrings.twoStepVerificationVerify,
                width: 90.w,
                alignment: Alignment.center,
                height: 13.w,
                borderRadius: 10.w,
                backgroundColor: AppColors.kPrimaryColor,
                labelFontSize: 16,
                labelFontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}