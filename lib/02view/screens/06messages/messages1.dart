import 'package:flutter/material.dart';
import 'package:jobsque2/02view/components/bottomsheetmessages.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sizer/sizer.dart';

import '../../../03controller/navigation/routes.dart';

import '../../components/messagescard.dart';

import '../../styles/colors.dart';

import '../../widgets/custom_text.dart';

class Messages1 extends StatelessWidget {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  Messages1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.homescreen1);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.iconsBlack,
          ),
        ),
        centerTitle: true,
        title: const CustomText(
          text: "Messages",
          fontSize: 20,
          fontWeight: FontWeight.w500,
          height: 1.2,
          color: AppColors.kPrimaryBlack,
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 75.w,
                    height: 20.w,
                    child: TextFormField(
                      onFieldSubmitted: (value) {
                        Navigator.pushNamed(context, AppRoutes.homescreen3);
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.lightGrey.withOpacity(0.14),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(35),
                        ),
                        labelText: "Type something...",
                        labelStyle: TextStyle(color: AppColors.lightGrey),
                      ),
                      obscureText: false,
                    ),
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: InkWell(
                            onTap: () {
                              showMaterialModalBottomSheet(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15.w),
                                  topRight: Radius.circular(15.w),
                                )),
                                context: context,
                                builder: (context) => Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15.w),
                                    topRight: Radius.circular(15.w),
                                  )),
                                  height: 40.h,
                                  child: BottomSheetCardMessages(),
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                width: 50,
                                height: 60,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.lightGrey,
                                    ),
                                    shape: BoxShape.circle),
                                child: ImageIcon(
                                  color: Colors.black,
                                  AssetImage(
                                    "assets/images/homescreen/setting-4.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          MessagesCard(),
          MessagesCard(),
          MessagesCard(),
        ],
      ),
    );
  }
}
