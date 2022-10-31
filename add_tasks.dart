import 'package:flutter/material.dart';

class add_tasks extends StatelessWidget {
  final Function addTaskCallback;

   add_tasks(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
           TextField(
            autofocus: true,
            onChanged: (newText){
              newTaskTitle = newText;
            },
          ),
          SizedBox(height: 30),
          TextButton(
              onPressed: (){
                addTaskCallback(newTaskTitle);
              },
              child: const Icon(Icons.send))
        ],
      ),
    );
  }
}
