import 'package:flutter/material.dart';
import 'package:flutter_module_10/todo_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'TO-Do',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const ToDoPage(),
    );
  }
}