import 'package:flutter/material.dart';
import 'package:mandalina_todo_app/widgets/my_button.dart';
import 'package:mandalina_todo_app/widgets/todo_header.dart';
import 'package:mandalina_todo_app/widgets/todo_item.dart';
// import 'package:mandalina_todo_app/config/constant/theme/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

List<String> todo = ["Study Lessons", "Run 5K", "Go to party"];
List<String> completed = ["Game meetup", "Take out tash"];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // MediaQuery = responsive tasarım.
    // double deviceHeight = MediaQuery.of(context).size.height;
    // double deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // HEADER

            // TOP COLUMN
            const TodoHeader(),

            // Flexible'ı  Expanded yerine verdik. Böylece flex yapısından faydalandık.

            // COMPLETED TEXT
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: SingleChildScrollView(
                  child: ListView.builder(
                    // shrinkWrap: ListView'in alanı
                    primary: false,
                    shrinkWrap: true,
                    itemCount: todo.length,
                    itemBuilder: (context, index) {
                      return TodoItem(title: todo[index]);
                    },
                  ),
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Completed",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),

            // BOTTOM COLUMN
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: SingleChildScrollView(
                  child: ListView.builder(
                    // shrinkWrap ve  primary'i, SingleChildScrollView kullandığım için kullandım.
                    // iki tane bütün alanı kapsamak isteyen widgetları iç içi kullandığımız için bu   shrinkWrap ve  primary'i kullandık.
                    shrinkWrap: true,
                    primary: false,
                    itemCount: completed.length,
                    itemBuilder: (context, index) {
                      return TodoItem(title: completed[index]);
                    },
                  ),
                ),
              ),
            ),

            // add button
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: MyButton(),
            ),
          ],
        ),
      ),
    );
  }
}
