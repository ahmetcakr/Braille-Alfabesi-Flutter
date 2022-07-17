import 'package:flutter/material.dart';

class MyIcons {
  static const IconData alfabe = Icons.abc_outlined;
  static const IconData harf = Icons.text_format_outlined;
  static const IconData deneme = Icons.circle_outlined;
  static const IconData kelime = Icons.text_fields_rounded;
}

enum MyTabViews { alfabe, harf, deneme, kelime }

class CustomPaddings {
  final EdgeInsets topPadding = const EdgeInsets.only(top: 20);
  final EdgeInsets bottomPadding = const EdgeInsets.only(bottom: 20);
  final EdgeInsets leftPadding = const EdgeInsets.only(left: 20);
  final EdgeInsets rightPadding = const EdgeInsets.only(right: 20);
  final EdgeInsets allPadding = const EdgeInsets.all(5.0);
  final EdgeInsets horizontalPadding =
      const EdgeInsets.symmetric(horizontal: 20);
  final EdgeInsets verticalPadding = const EdgeInsets.symmetric(vertical: 20);
}
