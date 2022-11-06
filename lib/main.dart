import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/view/screens/addtasks.dart';
import 'package:todo_app/view/screens/home.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color.fromARGB(255, 181, 105, 43),
      ),
   home: Home(),
    );
    
  }
}