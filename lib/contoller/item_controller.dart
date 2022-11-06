import 'package:get/get.dart';

import '../model/todo.dart';

class ItemController extends GetxController {
  var items = ''.obs;
  List todoList = [].obs;
  RxBool taskDone = false.obs;

  void addTodoItem(String item) {
    todoList.add(ToDo(
        id: DateTime.now().millisecondsSinceEpoch.toString(), todoText: item));
    items.value = item;
    update();
  }

  void handleTodoChange(ToDo todo) {
    todo.isDone = !todo.isDone;
    update();
  }

  void deleteTodoItem(String id) {
    todoList.removeWhere((item) => item.id == id);
    update();
  }
}