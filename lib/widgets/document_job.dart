// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Documentjob extends StatelessWidget {
  List listViewdata = [
    "Citizenship Copy 1 *",
    "Pp Size Pgoto 2 pic *",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listViewdata.length,
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
          title: Text(listViewdata[index]),
          subtitle: Text("For Opening Account"),
        );
      },
    );
  }
}
