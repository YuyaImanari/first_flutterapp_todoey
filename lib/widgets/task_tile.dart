import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskName;
  final bool isChecked;
  final Function checkboxCallback;
  final Function tapCallback;
  final Function longPressCallback;

  TaskTile(
    this.taskName,
    this.isChecked,
    this.checkboxCallback,
    this.tapCallback,
    this.longPressCallback,
  );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      onTap: tapCallback,
      title: Text(
        taskName,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}

// class TaskTile extends StatefulWidget {
//   @override
//   _TaskTileState createState() => _TaskTileState();
// }
//
// class _TaskTileState extends State<TaskTile> {
//   bool isChecked = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(
//         'This is a task.',
//         style: TextStyle(
//             decoration: isChecked ? TextDecoration.lineThrough : null),
//       ),
//       trailing: TaskCheckbox(
//         isChecked,
//             (checkboxState) {
//           setState(() {
//             isChecked = checkboxState;
//           });
//         },
//       ),
//     );
//   }
// }
//
// class TaskCheckbox extends StatelessWidget {
//   final bool checkboxState;
//   final Function toggleCheckboxState;
//
//   TaskCheckbox(this.checkboxState, this.toggleCheckboxState);
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.lightBlueAccent,
//       value: checkboxState,
//       onChanged: toggleCheckboxState,
//     );
//   }
// }
