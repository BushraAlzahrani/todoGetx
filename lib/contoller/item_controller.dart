import 'package:get/get.dart';

import '../model/todo.dart';

class ItemController extends GetxController {
  var items = ''.obs;
  List todoList = [].obs;


  void addTodoItem(String item) {
    todoList.add(ToDo(
        id: DateTime.now().millisecondsSinceEpoch.toString(), todoText: item, isDone: taskDone.isTrue));
    items.value = item;
  }

  void handleTodoChange(ToDo todo) {
   todo.isDone= !todo.isDone;
  }

  void deleteTodoItem(String id) {
    todoList.removeWhere((item) => item.id == id);
  }
}
