class Task {

  final String name;
 bool  isDone ;
 //final Function() addTaskCallback;

  Task({required this.name, required this.isDone});

  void toggleDone(){
    isDone= !isDone;
  }
}