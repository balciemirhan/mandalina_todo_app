import 'package:flutter/material.dart';
import 'package:mandalina_todo_app/config/constant/theme/color.dart';

class TodoItem extends StatefulWidget {
  const TodoItem({Key? key, required this.title}) : super(key: key);
  // custom widget içerisinde property kullandım.
  final String title;

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.cardBg,
      elevation: 40,
      shadowColor: AppColor.shadowBlack,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.notes_outlined,
              size: 50,
              color: Colors.white,
            ),
            Text(
              widget.title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                  color: AppColor.containerBg),
            ),
            Checkbox(
              activeColor: AppColor.containerBg,
              value: isChecked,
              onChanged: (val) => {
                setState(() {
                  isChecked = val!;
                }),
              },
            )
          ],
        ),
      ),
    );
  }
}
