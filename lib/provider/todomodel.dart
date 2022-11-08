import 'package:flutter/cupertino.dart';
import 'package:todoprovider/model/taskmodel.dart';

class TodoModel extends ChangeNotifier{
  List<TaskModel> taskList=[];

  addTaskInList(){
    TaskModel taskModel=TaskModel("title ${taskList.length}","This is the task no details ${taskList.length}");
    taskList.add(taskModel);
    notifyListeners();
  }
}