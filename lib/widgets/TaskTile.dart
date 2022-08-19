import 'package:flutter/material.dart';

// It was a stateful widget before. I learnt how to lift state with it
class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool? a)? checkboxCallback;
  final void Function()? longPress;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback,
      required this.longPress});

  // void checkboxCallback(bool? checkboxState) {
  //   if (checkboxState != null) {
  //     setState(() {
  //       isChecked = checkboxState;
  //     });
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPress,
      leading: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkboxCallback,
      ),
    );
  }
}

// class TaskCheckBox extends StatelessWidget {
//   TaskCheckBox({required this.checkboxState, this.toggleCheckboxState});
//   final bool checkboxState;
//   final void Function(bool? a)? toggleCheckboxState;
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
