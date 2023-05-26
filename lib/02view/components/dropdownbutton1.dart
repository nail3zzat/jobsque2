import 'package:flutter/material.dart';
import 'package:jobsque2/02view/utilities/resources/strings.dart';

class DropdownButton1 extends StatefulWidget {




  const DropdownButton1({super.key});

  @override
  State<DropdownButton1> createState() => _DropdownButton1State();
}

class _DropdownButton1State extends State<DropdownButton1> {



  String dropdownValue = AppStrings.salaries.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(

      value: dropdownValue,
      icon: const Icon(Icons.keyboard_arrow_down_outlined),
      elevation: 16,
      style: const TextStyle(color: Colors.black,
      fontSize: 17,
      fontWeight: FontWeight.normal),
      iconSize: 26,
      alignment:Alignment.centerLeft ,
      isExpanded: true,


      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: AppStrings.salaries.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
