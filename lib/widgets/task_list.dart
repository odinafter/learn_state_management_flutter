import 'package:flutter/material.dart';
import 'package:state_management_examples/widgets/task_tile.dart';
import 'package:state_management_examples/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TasksTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkBoxCallBack: (bool checkBoxState) {
                taskData.updateTask(task);

                // setState(() {
                //   widget.tasks[index].toggleDone();
                // });
              },
              longPressCallback: () {
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
