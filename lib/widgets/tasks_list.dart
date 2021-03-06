import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'task_tile.dart';

class TasksList extends StatefulWidget {

  final List<Task> tasks;

  TasksList({required this.tasks});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return TaskTile(isChecked: widget.tasks[index].isDone, taskTitle: widget.tasks[index].name, checkboxCallback: (bool? checkboxState){
        setState(() {
          widget.tasks[index].toggleDone();
        });
      });
    }, itemCount: widget.tasks.length,
    );

  }
}