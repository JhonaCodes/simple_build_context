import 'package:flutter/material.dart';

extension ScaffoldExtension on BuildContext {

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(SnackBar snackbar) =>
      ScaffoldMessenger.of(this).showSnackBar(snackbar);

  void removeCurrentSnackBar(
      {SnackBarClosedReason reason = SnackBarClosedReason.remove}) =>
      ScaffoldMessenger.of(this).removeCurrentSnackBar(reason: reason);

  void hideCurrentSnackBar(
      {SnackBarClosedReason reason = SnackBarClosedReason.hide}) =>
      ScaffoldMessenger.of(this).hideCurrentSnackBar(reason: reason);

  void openDrawer() => Scaffold.of(this).openDrawer();

  void openEndDrawer() => Scaffold.of(this).openEndDrawer();

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

  bool get isScaffoldDrawerOpen => Scaffold.of(this).isDrawerOpen;
  bool get isScaffoldEndDrawerOpen => Scaffold.of(this).isEndDrawerOpen;

}
