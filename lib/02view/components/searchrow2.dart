import 'package:flutter/material.dart';
import 'package:jobsque2/02view/utilities/resources/strings.dart';

class SearchRow2 extends StatelessWidget {
  VoidCallback? onpressed1;
  String string1;
  SearchRow2({Key? key,this.onpressed1,required this.string1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(

            children: [
              Icon(Icons.access_time),
              TextButton(
                onPressed: onpressed1, child: Text(
                string1,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,

                ),

              ),
              ),

            ],),
        ),

        Icon(Icons.arrow_circle_right_outlined,color: Colors.blue,size: 30,),
      ],
    );
  }
}
