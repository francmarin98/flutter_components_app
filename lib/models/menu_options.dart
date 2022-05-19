import 'package:flutter/material.dart' show IconData, Widget;

class MenuOptions {
  final String label;
  final IconData icon;
  final String routeName;
  final Widget screen;

  MenuOptions(
      {required this.label,
      required this.icon,
      required this.routeName,
      required this.screen});
}
