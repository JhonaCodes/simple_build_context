import 'package:flutter/material.dart';

/// Extension on [BuildContext] to provide quick access to [ModalRoute] properties.
extension ModalRouteExtension<T> on BuildContext {
  /// The current [ModalRoute].
  ModalRoute<T>? get modalRoute => ModalRoute.of<T>(this);

  /// The settings for the current [ModalRoute].
  RouteSettings? get routeSettings => modalRoute?.settings;

  /// Returns a [Scaffold] instance from the current context
  ScaffoldState? get scaffold => Scaffold.of(this);

  /// Check if the [Scaffold] is open
  bool get isScaffoldOpen =>
      scaffold?.isDrawerOpen ?? false || scaffold!.isEndDrawerOpen;
}
