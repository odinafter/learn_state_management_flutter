import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_examples/models/task.dart';
import 'package:state_management_examples/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({Key key}) : super(key: key);

  TextEditingController addTask = TextEditingController();

  String newTeskTitle;

  // TasksList tasksList = TasksList();

  // List taskItems = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(
        0xff757575,
      ),
      child: Container(
        padding: EdgeInsets.all(
          20.0,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              20.0,
            ),
            topRight: Radius.circular(
              20.0,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: addTask,
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTeskTitle = newText;
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Positioned.fill(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFF0D47A1),
                            Color(0xFF1976D2),
                            Color(0xFF42A5F5),
                          ],
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(8.0),
                      primary: Colors.white,
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Provider.of<TaskData>(context, listen: false)
                          .addTask(addTask.text);
                      Navigator.pop(context);

                      // Navigator.pop(context);
                      // addTaskCallback(addTask.text);
                      // addTask.text;
                      // print(newTeskTitle);
                    },
                    child: Text(
                      'Add',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// TaskAddButton taskAdd;

// class TaskAddButton {TaskAddButton({this.taskNewItem});
//   final String taskNewItem;

// List taskItems = [];
// for (String newTask in tasks) {
//   var newItem = TaskAddButton(
//     taskNewItem:
//   );
// }}
