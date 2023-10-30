// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:publicgovpr/pages/bankHome.dart';

class ListViewData extends StatelessWidget {
  List<String> dataList = [
    "RBB Bank",
    "Everest Bank Limited",
    "Nic Asia Bank",
    "Global IME Bank",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            // Add your onTap logic here
            _handleListItemTap(context, dataList[index]);
          },
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0
                  ? Color(0XFF674AEF)
                  : Color(0XFF674AEF).withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.list,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text(dataList[index]),
          subtitle: Text("Tap to view More"),
        );
      },
    );
  }

  void _handleListItemTap(BuildContext context, String bankName) {
    // Add your logic for what should happen when a list item is tapped
    // For example, you can navigate to a new page or display additional information.
    // Here, I'm just showing a dialog with the bank name.
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Bank Details'),
          content: Text('You tapped on: $bankName'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => bankHome(),
                    ));
              },
              child: Text('Open Account'),
            ),
          ],
        );
      },
    );
  }
}
