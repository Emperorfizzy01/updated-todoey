import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/TaskTile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [TaskTile(), TaskTile(), TaskTile()],
    );
  }
}
