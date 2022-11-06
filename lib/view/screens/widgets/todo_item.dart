import 'package:flutter/material.dart';
import '../../../model/todo.dart';

class ToDoItem extends StatelessWidget {
  
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;
  
  const ToDoItem({Key? key, required this.todo, required this.onToDoChanged, required this.onDeleteItem});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Color.fromARGB(105, 241, 222, 200),
        leading: Icon(
          todo.isDone ? Icons.check_box: Icons.check_box_outline_blank,
          color: Color.fromARGB(255, 97, 153, 216),
        ),
        title: Text(
            todo.todoText!,
            style: TextStyle(
              decoration: todo.isDone? TextDecoration.lineThrough: null,
            )),
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Color.fromARGB(236, 197, 59, 32),
            borderRadius: BorderRadius.circular(5),
           ),
           child: IconButton(
            color: Colors.white,
            iconSize: 20,
            icon: Icon(Icons.delete), 
            onPressed: () {  
              onDeleteItem(todo.id);
            },),
        ),
      ),
    );
  }
}
