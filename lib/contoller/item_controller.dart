import 'package:get/get.dart';

import '../model/todo.dart';

class ItemController extends GetxController {
  var items = ''.obs;
  List todoList = [].obs;
  RxBool taskDone = false.obs;

  void addTodoItem(String item) {
    todoList.add(ToDo(
        id: DateTime.now().millisecondsSinceEpoch.toString(), todoText: item, isDone: taskDone.isTrue));
    items.value = item;
  }

  void handleTodoChange(ToDo todo) {
    bool isdone = todo.isDone;
    isdone = !isdone;
    taskDone.value = isdone;
  }

  void deleteTodoItem(String id) {
    todoList.removeWhere((item) => item.id == id);
  }
}
