import 'package:flutter/material.dart';

/// Extension on [BuildContext] to provide quick access to [Scaffold] and [ScaffoldMessenger] properties.
extension ScaffoldExtension on BuildContext {
  /// Shows a [SnackBar] across all registered [Scaffold]s.
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
          SnackBar snackBar) =>
      ScaffoldMessenger.of(this).showSnackBar(snackBar);

  /// Removes the current [SnackBar] by running its normal exit animation.
  void removeCurrentSnackBar(
          {SnackBarClosedReason reason = SnackBarClosedReason.remove}) =>
      ScaffoldMessenger.of(this).removeCurrentSnackBar(reason: reason);

  /// Hides the current [SnackBar] by instantly removing it without any animation.
  void hideCurrentSnackBar(
          {SnackBarClosedReason reason = SnackBarClosedReason.hide}) =>
      ScaffoldMessenger.of(this).hideCurrentSnackBar(reason: reason);

  /// Opens the [Drawer] of the nearest [Scaffold].
  void openDrawer() => Scaffold.of(this).openDrawer();

  /// Opens the end [Drawer] of the nearest [Scaffold].
  void openEndDrawer() => Scaffold.of(this).openEndDrawer();

  /// Shows a material design bottom sheet in the nearest [Scaffold].
  void showBottomSheet(WidgetBuilder builder,
          {Color? backgroundColor,
          double? elevation,
          ShapeBorder? shape,
          Clip? clipBehaviour}) =>
      Scaffold.of(this).showBottomSheet(builder,
          backgroundColor: backgroundColor,
          elevation: elevation,
          shape: shape,
          clipBehavior: clipBehaviour);

  /// Whether the [Drawer] of the nearest [Scaffold] is open.
  bool get isScaffoldDrawerOpen => Scaffold.of(this).isDrawerOpen;

  /// Whether the end [Drawer] of the nearest [Scaffold] is open.
  bool get isScaffoldEndDrawerOpen => Scaffold.of(this).isEndDrawerOpen;
}
