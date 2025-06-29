import 'package:flutter/material.dart';

/// Extension on [BuildContext] to provide quick access to [NavigatorState] methods.
extension NavigatorStateExtension on BuildContext {
  /// Navigates to a new [page].
  void navigateTo(Widget page) =>
      Navigator.of(this).push(MaterialPageRoute(builder: (context) => page));

  /// Navigates to a named [routeName].
  void navigateToNamed(String routeName) =>
      Navigator.of(this).pushNamed(routeName);

  /// Navigates back to the previous route.
  void navigateBack() => Navigator.of(this).pop();
}
