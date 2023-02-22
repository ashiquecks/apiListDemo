import 'package:flutter/material.dart';

Widget listCard({
  required String titleText,
  required String subTitelText,
}) {
  return Card(
    margin: const EdgeInsets.all(10),
    elevation: 4,
    child: ListTile(
      leading: Container(
        height: 40,
        width: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(titleText[0]),
      ),
      title: Text(titleText),
      subtitle: Text(subTitelText),
    ),
  );
}
