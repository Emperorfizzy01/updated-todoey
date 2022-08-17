import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/tasks.dart';

class AddTaskScreen extends StatefulWidget {
  final Function addTaskCallback;
  AddTaskScreen(this.addTaskCallback);
  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  late String newTextValue;
  @override
  void initState() {
    newTextValue = 'did';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(30.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              style: const TextStyle(color: Colors.lightBlueAccent),
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTextValue = newText;
              },
            ),
            FlatButton(
              child: const Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                widget.addTaskCallback(newTextValue);
              },
            )
          ],
        ),
      ),
    );
  }
}
