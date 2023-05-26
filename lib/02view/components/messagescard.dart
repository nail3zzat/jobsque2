import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utilities/resources/assets.dart';

class MessagesCard extends StatelessWidget {
  const MessagesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Twitter"),
      leading: Image.asset(
        width: 25,
        height: 25,
        fit: BoxFit.cover,

        AppAssets.zoom,
      ),
      subtitle: Text("Here is"),
      trailing: Text("12:39"),

    );
  }
}
