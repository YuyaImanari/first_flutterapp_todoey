import 'package:flutter/material.dart';
import 'package:trial_todoey/widgets/task_tile.dart';
import 'package:trial_todoey/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return ListView(
    //   children: <Widget>[
    //     TaskTile(tasks[0].name, tasks[0].isChecked),
    //     TaskTile(tasks[1].name, tasks[1].isChecked),
    //     TaskTile(tasks[2].name, tasks[2].isChecked),
    //   ],
    // );
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              task.name,
              task.isChecked,
              (bool checkboxState) {
                taskData.updateTask(task);
              },
              () {
                taskData.updateTask(task);
              },
              () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
