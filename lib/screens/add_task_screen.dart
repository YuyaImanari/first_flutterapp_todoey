import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trial_todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskInputCompleted = '';
    String newTaskInputting = '';
    String newTaskTitle = '';

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskInputting = newText;
              },
              onSubmitted: (newText) {
                if (newTaskInputting != null) {
                  print('newTaskInputting : ' +
                      newTaskInputting +
                      ' @onSubmitted');
                }
                newTaskInputCompleted = newText;
              },
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                print('newTaskInputting : ' + newTaskInputting + ' @onPressed');
                print('newTaskInputCompleted : ' +
                    newTaskInputCompleted +
                    ' @onPressed');

                // TODO: 受け取る値が初期化されているのを直す
                if (newTaskInputting == '' && newTaskInputCompleted == '') {
                  newTaskTitle = 'FAILED : 文字列の受け取りに失敗';
                } else if (newTaskInputting == '') {
                  newTaskTitle = newTaskInputCompleted;
                } else {
                  newTaskTitle = newTaskInputting;
                }

                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskTitle);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
