import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/TaskTile.dart';
import 'package:todoey_flutter/models/tasks.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
  TaskList(this.tasks);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: widget.tasks[index].isDone,
            taskTitle: widget.tasks[index].name,
            checkboxCallback: (checkboxState) {
              if (checkboxState != null) {
                setState(() {
                  widget.tasks[index].toggleDone();
                });
              }
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}
