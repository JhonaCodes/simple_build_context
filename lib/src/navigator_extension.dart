import 'package:flutter/material.dart';

/// Extension on [BuildContext] to provide quick access to [Navigator] methods.
extension NavigatorExtension on BuildContext {
  /// Pushes a [route] to the navigator.
  Future<T?> push<T>(Route<T> route) => Navigator.push(this, route);

  /// Pops the current route from the navigator.
  void pop<T extends Object>([T? result]) => Navigator.pop(this, result);

  /// Pushes a named [routeName] to the navigator.
  Future<T?> pushNamed<T>(String routeName, {Object? arguments}) =>
      Navigator.pushNamed<T?>(this, routeName, arguments: arguments);

  /// Whether the navigator can be popped.
  bool canPop() => Navigator.canPop(this);

  /// Pops the navigator until a [predicate] is satisfied.
  void popUntil(RoutePredicate predicate) =>
      Navigator.popUntil(this, predicate);
}
