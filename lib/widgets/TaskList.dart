// ignore_for_file: prefer_const_constructors_in_immutables

// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:myday/widgets/TaskTile.dart';
import 'package:myday/models/task.dart';
import 'package:provider/provider.dart';
import 'package:myday/models/taskData.dart';

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child  ) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task =taskData.tasks[index];
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              tasktitle: taskData.tasks[index].name,
              checkboxcallback: (bool ? checkbox) {
            taskData.updateTask(taskData.tasks[index]);

              },
              longpresscallback: (){
              taskData.deletetask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      }
    );
  }
}
