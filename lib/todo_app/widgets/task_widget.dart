import 'package:flutter/material.dart';
import 'package:state_managment/todo_app/models/task_model.dart';

import '../data/tasks_data.dart';

class TaskWidget extends StatelessWidget {
  Function fun;
  Task task;

  TaskWidget(this.task, this.fun);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: task.isCompleted ? Colors.green : Colors.black45,
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      child: CheckboxListTile(
        title: Text(task.title),
        value: task.isCompleted,
        secondary: IconButton(
          onPressed: () {
            fun(task);
            tasksList.remove(task);
          },
          icon: Icon(Icons.delete),
        ),
        onChanged: (v) {
          fun(task);
        },
      ),
    );
  }
}
