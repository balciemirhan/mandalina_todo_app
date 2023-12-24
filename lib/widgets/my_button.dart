import 'package:flutter/material.dart';
import 'package:mandalina_todo_app/config/constant/theme/color.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.cardBg,
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
          onPressed: () => Navigator.of(context).pushNamed("/add"),
          label: const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "New Task",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColor.buttonText),
            ),
          ),
          icon: const Icon(
            Icons.add,
            color: AppColor.containerBg,
          ),
        )
      ],
    );
  }
}
