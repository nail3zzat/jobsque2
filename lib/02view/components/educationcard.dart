import 'package:flutter/material.dart';
import 'package:jobsque2/02view/components/uploaded_doc_preview.dart';

import 'package:sizer/sizer.dart';

import '../styles/colors.dart';
import '../utilities/resources/assets.dart';
import '../widgets/custom_text.dart';
import 'file_model.dart';

class EducationCard extends StatelessWidget {
  final FileModel fileModel;
  final VoidCallback? onPressedEdit;
  final VoidCallback? onPressedDelete;

  const EducationCard({
    Key? key,
    required this.fileModel,
    required this.onPressedEdit,
    required this.onPressedDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SliverList(
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
    );
  }
}
