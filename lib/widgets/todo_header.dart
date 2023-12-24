import 'package:flutter/material.dart';

// Mandalina Todo List Alanı:

class TodoHeader extends StatelessWidget {
  const TodoHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      width: deviceWidth,
      height: deviceHeight / 3,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("lib/assets/images/decoration2.png"),
            fit: BoxFit.cover),
        boxShadow: [
          BoxShadow(
            blurRadius: 12,
          )
        ],
      ),
      child: const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              "23.12.2023",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text(
              "Mandalina Todo List",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
