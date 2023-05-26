import 'package:flutter/material.dart';
import 'package:jobsque2/02view/components/jobtypecard1.dart';
import 'package:jobsque2/02view/styles/colors.dart';
import 'package:jobsque2/02view/widgets/custom_elevated_button.dart';
import 'package:sizer/sizer.dart';

import '../../03controller/navigation/routes.dart';
import '../utilities/resources/assets.dart';
import 'jobtypecard.dart';

class NotificationCard extends StatelessWidget {
  int index;

  NotificationCard({Key? key,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        width: 25,
        height: 25,
        fit: BoxFit.cover,

        AppAssets.savedjobs[index],
      ),
        title: Text("Dana"),
        subtitle: Text("Posted new design"),
        onTap: (){
        Navigator.pushNamed(context, AppRoutes.homescreen3);
        },
        trailing: Row(
          children: [
            Icon(Icons.circle,
            color: Colors.yellow,),
            Text("10.00AM")
          ],
        ),







    );
  }
}
