import 'package:flutter/material.dart';

extension NavigatorStateExtension on BuildContext {
  void navigateTo(Widget page) => Navigator.of(this).push(MaterialPageRoute(builder: (context) => page));
  void navigateToNamed(String routeName) => Navigator.of(this).pushNamed(routeName);
  void navigateBack() => Navigator.of(this).pop();
}