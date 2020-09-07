import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trial_todoey/models/task_data.dart';
import 'package:trial_todoey/screens/tasks_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
