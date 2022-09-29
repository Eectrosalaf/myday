// ignore_for_file: use_key_in_widget_constructors, unnecessary_const, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String tasktitle;
  final Function(bool?)? checkboxcallback;
  final  Function()  ? longpresscallback;

  TaskTile(
      {required this.isChecked,
      required this.tasktitle, this.checkboxcallback, this.longpresscallback});
  @override
  Widget build(BuildContext context) {
    //var checkBox;
    return ListTile(
      onLongPress:longpresscallback,
      title: Text(
        tasktitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.blueAccent,
        value: isChecked,
        onChanged:checkboxcallback

    )
    );
  }
}
