import 'package:flutter/material.dart';
import 'package:app5/util/todotile.dart';
import 'package:app5/util/alertdialogbox.dart';

class home extends StatefulWidget {
  const home({super.key});
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List todolist = [
    [
      "azaam",
      true,
    ],
    ["ali", false],
    ["sheraz", false],
    ["waqas", false]
  ];
  void checkboxchecked(bool value, int index) {
    setState(() {
      todolist[index][1] = !todolist[index][1];
    });
  }

  addpressed() {
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: const Text("Todo"),
        backgroundColor: Colors.yellow[600],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addpressed(),
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: todolist.length,
        itemBuilder: (BuildContext context, int index) {
          return Todotile(
            onchanged: (value) => checkboxchecked(false, index),
            taskcompleted: todolist[index][1],
            taskname: todolist[index][0],
          );
        },
      ),
    );
  }
}
