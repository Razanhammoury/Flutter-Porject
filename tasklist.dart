import 'package:flutter/material.dart';

class tasklist extends StatelessWidget {
 final bool isChecked ;
 final String taskTitle;
 final void function; bool checkboxChange;
 tasklist({
   required this.isChecked,
   required this.taskTitle,
   required this.checkboxChange, this.function,
 }) {
   // TODO: implement tasklist
   throw UnimplementedError();
 }

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      title: Text(
        taskTitle,
      style: TextStyle(decoration: isChecked? TextDecoration.lineThrough : null),
      ),
      trailing:Checkbox(
        activeColor: Colors.green[300],
        value: isChecked,
          onChanged: checkboxChange?,
      ),
    );
  }
}



