import 'package:flutter/material.dart';
import 'package:midecalcare_project/main.dart';
import 'package:midecalcare_project/models/task.dart';
import 'package:midecalcare_project/screens/add_tasks.dart';
import 'package:midecalcare_project/widgets/tasks_list.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<task> tasks = [
    task(name: 'go to doctor'),
    task(name: 'diabetes medicine'),
    task(name: 'pressure check'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:  FloatingActionButton(
        onPressed: ()  {
          showModalBottomSheet(
          isScrollControlled: true,
              context: context,
              builder: (context)=> SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom
                ),
                  child: add_tasks((newTaskTitle){
                    setState(() {
                      tasks.add(task(name: newTaskTitle));
                      Navigator.pop(context);
                    });
                  }),
              ),
          ),
          );
        },
        backgroundColor: Colors.indigoAccent,
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.green[300],
      body: Container(
        padding:  EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
          bottom: 80,
        ),
        child: Column(
            children: [
              Row(
                  children: [
                    Icon(Icons.playlist_add_check,size: 40,color: Colors.white),
                    SizedBox(width: 20),
                    Text('Medical Care',style: TextStyle(color: Colors.white,
                    fontSize: 40,fontWeight: FontWeight.bold,
                    ),
                    ),
                  ],
              ),
               Text(
                '${tasks.length} Tasks',
                style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
              ),
                ),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    )
                  ),
                  child: tasks_list(tasks),
                ),
              )
            ],
        ),
      ),
    );
  }
}

