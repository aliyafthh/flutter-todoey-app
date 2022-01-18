import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
class TaskTile extends StatelessWidget {

  final bool? isChecked;
  final String taskTitle;
  final Function(bool?)? checkboxCallback;

  TaskTile({required this.isChecked,required this.taskTitle, required this.checkboxCallback
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,
        style: TextStyle(
        decoration: isChecked == true ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
      activeColor: Colors.lightBlueAccent,
    value: isChecked,
    onChanged: checkboxCallback,
    ),

      );

  }
}



