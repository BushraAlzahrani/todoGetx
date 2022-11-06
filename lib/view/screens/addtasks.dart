import 'package:flutter/material.dart';

class AddTasks extends StatefulWidget {
  @override
  State<AddTasks> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AddTasks> {
  TextEditingController taskcontroller= TextEditingController();

  addtask(){

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TODO'),
          //  backgroundColor: Colors.orange,
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 50),
          child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(children: <Widget>[
                TextField(
                  controller: taskcontroller,
                  autocorrect: false,
                  textInputAction: TextInputAction.send,
                  textAlign: TextAlign.left,
                  textDirection: TextDirection.ltr,
                  cursorColor: Colors.black,
                  maxLength: 50,
                  style: TextStyle(
                    color: Colors.indigo,
                    letterSpacing: 1.0,
                    fontSize: 16,
                  ),
                  decoration: new InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Write Your task',
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    child: Text('Add Task'),
                    onPressed: () {},
                  ),
                ),
              ])),
        ));
  }
}
