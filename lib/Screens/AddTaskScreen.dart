// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, use_function_type_syntax_for_parameters, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:myday/models/task.dart';
import 'package:provider/provider.dart';
import 'package:myday/models/taskData.dart';
class AddTaskScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';
    return Container(
        color: Color(0xff757575),
        child: Container(
            padding: EdgeInsets.all(40),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  // bottomRight: Radius.circular(30),
                  // bottomLeft: Radius.circular(30),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Text(
                    'Add Task',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 60,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                TextField(
                  onChanged: (newText) {
                    //print(newText);
                    newTaskTitle = newText;
                  },
                  autofocus: true,
                  // decoration:kMessageContainerDecoration,
                  textAlign: TextAlign.center,
                  cursorColor: Colors.blueAccent,

                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    final task = Task(name:newTaskTitle,isDone: false );
                    Provider.of<TaskData>(context,listen:false
                    ).addTask(newTaskTitle);
                    Navigator.pop(context);
                   // print(newTaskTitle);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.only(
                          // topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          // bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                        )),
                    // color: Colors.blueAccent,
                    width: 300,
                    height: 50,
                    child: Center(
                      child: Text(
                        'Add',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                )
              ],
            )));
  }
}
