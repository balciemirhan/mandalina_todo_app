import 'package:flutter/material.dart';
import 'package:mandalina_todo_app/widgets/my_appbar.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            MyAppbar(),
          ],
        ),
      ),
    );
  }
}
