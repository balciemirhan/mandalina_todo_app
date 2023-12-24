import 'package:flutter/material.dart';

final class AppText {
  const AppText._();
  static TextStyle h1({required bool bold, required Color color}) {
    return TextStyle(
      fontSize: 48,
      fontWeight: bold ? FontWeight.bold : FontWeight.normal,
      color: color,
    );
  }
}
