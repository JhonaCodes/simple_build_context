import 'package:flutter/material.dart';

extension ModalRouteExtension<T> on BuildContext {

  ModalRoute<T>? get modalRoute => ModalRoute.of<T>(this);

  RouteSettings? get routeSettings => modalRoute?.settings;

  /// Returns a [Scaffold] instance from the current context
  ScaffoldState? get scaffold => Scaffold.of(this);

  /// Check if the [Scaffold] is open
  bool get isScaffoldOpen => scaffold?.isDrawerOpen ?? false || scaffold!.isEndDrawerOpen;

}



