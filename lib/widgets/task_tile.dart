import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallBack;
  final Function longPressCallback;

  TasksTile(
      {this.isChecked,
      this.taskTitle,
      this.checkBoxCallBack,
      this.longPressCallback});

  // void checkBoxCallBack(bool checkBoxState) {
  //   setState(() {
  //     return isChecked = checkBoxState;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}
