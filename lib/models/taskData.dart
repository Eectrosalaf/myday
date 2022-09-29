import 'package:flutter/foundation.dart';
import 'package:myday/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {

  // ignore: prefer_final_fields
  List<Task> _tasks = [
    Task(name: 'go to school', isDone: false,),
    Task(name: ' read quran', isDone: false),
    Task(name: ' read hadith', isDone: false),
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
}
  int get taskCount {
    return _tasks.length;
  }

void addTask (String newTaskTitle) {
  final task = Task(name: newTaskTitle, isDone: false);

  _tasks.add(task);
  notifyListeners();

}
void updateTask(Task task){
task.toggleDone();
notifyListeners();
  }
void deletetask(Task task){
    _tasks.remove(task);
    notifyListeners();
}

}