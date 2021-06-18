import 'package:flutter/cupertino.dart';

import 'model_prac.dart';

class TaskModel extends ChangeNotifier {
  List<ModelPractice> taskList = [];

  addTask() {
    ModelPractice modelPractice =
        ModelPractice("title ${taskList.length}", "hii ${taskList.length}");
    taskList.add(modelPractice);
    notifyListeners();
  }
}
