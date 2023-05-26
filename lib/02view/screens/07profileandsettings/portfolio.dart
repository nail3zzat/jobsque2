

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../components/file_model.dart';
import '../../components/upload_box.dart';
import '../../components/uploaded_doc_preview.dart';
import '../../styles/colors.dart';
import '../../utilities/resources/assets.dart';
import '../../utilities/resources/strings.dart';
import '../../widgets/custom_text.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

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
              text: AppStrings.profilePortfolio,
              fontWeight: FontWeight.w500,
              fontSize: 20,
              height: 1.2,
              color: AppColors.kPrimaryBlack,
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const CustomText(
                        text: AppStrings.portfolioAddPortfolioHere,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        height: 1.2,
                        color: AppColors.kPrimaryBlack,
                      ),
                      SizedBox(
                        height: 3.w,
                      ),
                      UploadBox(
                        onPressed: () {},
                        title: AppStrings.uploadDocsOtherFiles,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 3,
                  (context, index) => Padding(
                padding: EdgeInsets.only(left: 5.w,right: 5.w,top: 3.w),
                child: UploadedDocPreview(
                  fileModel: FileModel(
                    name: 'nailcv',
                    type: 'pdf',
                    photo: AppAssets.pdfLogo,
                    size: '100',
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