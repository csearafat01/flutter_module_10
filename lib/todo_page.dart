import 'package:flutter/material.dart';
import 'package:flutter_module_10/style.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return ToDoPageView();
  }
}

class ToDoPageView extends State<ToDoPage> {
  List toDoList = [{'1':'1'},
    {'1':'1'}];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To-do App'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Row(
                children: [
                  Expanded(
                      flex:70,
              child: TextFormField(decoration: AppInputDecoration('List'),)),
                  Expanded(
                    flex: 30,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: ElevatedButton(
                    onPressed: () {},
                          style: AppButtonStyle(),
                    child: const Text('Add'),
                  ),
                      ))
                ],
              ),
            ),
            Expanded(
              flex: 90,
              child: ListView.builder(
                  itemCount: toDoList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: SizeBox50(
                        Row(
                          children: [
                            Expanded(
                                flex: 80,
                                child: Text('Item')),
                            Expanded(
                              flex: 20,
                                child: TextButton(onPressed: (){},child: Icon(Icons.delete),))
                          ],
                        )
                      )
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
