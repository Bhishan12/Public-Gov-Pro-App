// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class DocumentRequired extends StatelessWidget {
  List DocumentRequire = [
    "Citizenship Copy 1 *",
    "Pp Size Pgoto 2 pic *",
    "Bijli Bill Recipt *",
    "Pasport Optional",
    "Driving Licence optional",
    "Voter Id Optional",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: DocumentRequire.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0
                  ? Color(0XFF674AEF)
                  : Color(0XFF674AEF).withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.edit_document,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text(DocumentRequire[index]),
          subtitle: Text("For Opening Account"),
        );
      },
    );
  }
}
