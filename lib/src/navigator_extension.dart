import 'package:flutter/material.dart';

extension NavigatorExtension on BuildContext {
  Future<T?> push<T>(Route<T> route) => Navigator.push(this, route);

  void pop<T extends Object>([T? result]) => Navigator.pop(this, result);

  Future<T?> pushNamed<T>(String routeName, {Object? arguments}) =>
      Navigator.pushNamed<T?>(this, routeName, arguments: arguments);

  Future<T?> pushReplacement<T, TO>(String routeName, {TO? result, Object? arguments}) =>
      Navigator.pushReplacementNamed<T, TO>(this, routeName, arguments: arguments, result: result);

  bool canPop() => Navigator.canPop(this);

  void popUntil(RoutePredicate predicate) =>
      Navigator.popUntil(this, predicate);
}
