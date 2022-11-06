import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/view/screens/widgets/todo_item.dart';
import '../../contoller/item_controller.dart';
import '../../model/todo.dart';
class Home extends StatelessWidget {


  TextEditingController taskcontroller = TextEditingController();
  final _todoController = TextEditingController();

  final ItemController _ItemController = Get.put(ItemController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 198, 144, 90),
          title: Row(
            children: [
              Icon(
                Icons.menu,
                color: Color.fromARGB(167, 75, 36, 4),
                size: 35,
              ),
            ],
          ),
        ),
        
        body: Stack(
          children: [
            Expanded(
                child: Obx(()=> SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(children: <Widget>[
                      Container(
                          height: 60,
                          width: 400,
                          child: Text('Todo List',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ))),
                      for (ToDo task in _ItemController.todoList.reversed)
                        ToDoItem(
                          todo: task,
                          onToDoChanged: _ItemController.handleTodoChange,
                          onDeleteItem: _ItemController.deleteTodoItem,
                        ),

                    ])),
              ),
            )),),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(children: [
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                    right: 20,
                    left: 20,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(192, 190, 190, 190),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 37, 27, 22),
                        // offset: (0.0, 0.0),
                        blurRadius: 10.0,
                        spreadRadius: 0.0,
                        // spreadRadius:0.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                      controller: _todoController,
                      decoration: InputDecoration(
                        hintText: 'Add a new todo task',
                        border: InputBorder.none,
                      )),
                      
                )),
                Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                    right: 20,
                  ),
                  child: ElevatedButton(
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 97, 153, 216),
                      minimumSize: Size(60, 60),
                      elevation: 10,
                    ),
                    onPressed: () {
                      _ItemController.addTodoItem(_todoController.text);
                      print('This is the item: ${_ItemController.items}');
                    },
                  ),
                )
              ]),
            ),
          ],
        ));
  }
}