import 'package:flutter/material.dart';
import 'package:mandalina_todo_app/pages/add_task_page.dart';
import 'package:mandalina_todo_app/pages/home_page.dart';
import 'package:mandalina_todo_app/pages/splash_page.dart';

typedef AppRouteMapFunction = Widget Function(BuildContext context);

final class AppRoute {
  const AppRoute._();

  static const String splash = "splash";
  static const String home = "/home";
  static const String add = "/add";

  static Map<String, AppRouteMapFunction> routes = {
    splash: (context) => const SplashPage(),
    home: (context) => const HomePage(),
    add: (context) => const AddTaskPage(),
  };
}

// Navigator.of(context).pushNamed("/Home") yapabilmek icin (sayfa geçişi)
// İlk ekrana geri dönmek için Navigator.pop()işlevi kullanın.