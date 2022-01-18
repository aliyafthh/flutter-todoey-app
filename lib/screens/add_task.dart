import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  final Function addTaskCallback;

  AddTaskScreen({required this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight:  Radius.circular(20.0)),
      ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add task', style:
            TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
              color: Colors.lightBlueAccent,
            ),
            textAlign: TextAlign.center,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTaskTitle = newText;
              },
            ),
            TextButton(
                onPressed: (){
                  addTaskCallback(newTaskTitle);
                },
                child: Text('Add',
                style: TextStyle(color: Colors.white),),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10.0)),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
