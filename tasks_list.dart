import 'package:flutter/material.dart';
import 'package:midecalcare_project/models/task.dart';
import 'package:midecalcare_project/widgets/tasklist.dart';


abstract class tasks_list extends StatefulWidget {
  late final List<task> tasks;
  tasks_list(this.tasks);

  @override
  State<tasks_list> createState() => _tasks_listState();
}

class _tasks_listState extends State<tasks_list> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
        itemBuilder: (context,index){
          return taskTitle(
              isChecked:widget.tasks[index].isDone,
              taskTitle:widget.tasks[index].name,
          checkboxChange:(newValue){
          setState(() {
            widget.tasks[index].doneChange();
            });
            });
        },);
  }
}