import 'package:flutter/material.dart';
import 'package:mandalina_todo_app/config/constant/theme/color.dart';

class MyAppbar extends StatelessWidget {
  const MyAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      height: deviceHeight / 9,
      width: deviceWidth,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
              blurRadius: 25,
              offset: Offset(3, 6),
              color: AppColor.shadowBlack),
        ],
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1, 0.5],
          colors: [
            AppColor.color1,
            AppColor.color2,
          ],
        ),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(
              Icons.close,
              color: AppColor.lightBg,
              size: 25,
            ),
          ),

          // Expanded ile text' i istediğim gibi ayarladım.
          Expanded(
            child: Text(
              "Add New Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColor.lightBg,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          )
        ],
      ),
    );
  }
}
