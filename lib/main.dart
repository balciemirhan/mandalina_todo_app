import 'package:flutter/material.dart';
import 'package:mandalina_todo_app/config/constant/theme/theme.dart';
import 'package:mandalina_todo_app/config/route/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      debugShowCheckedModeBanner: false,

      // --------------------------- THEME ---------------------------

      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,

      // --------------------------- ROUTE ---------------------------

      initialRoute: AppRoute.home,
      routes: AppRoute.routes,
    );
  }
}
