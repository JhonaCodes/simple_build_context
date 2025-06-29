import 'package:flutter/material.dart';

/// Extension on [Widget] to provide quick access to common properties.
extension WidgetExtension on Widget? {
  /// Returns this widget if it is not null, otherwise returns [alternative].
  Widget orElse(Widget alternative) {
    return this ?? alternative;
  }

  /// Returns `true` if this widget is not null.
  bool get isNotNull => this != null;

  /// Returns `true` if this widget is null.
  bool get isNull => this == null;

  /// Returns [builder] if [condition] is true, otherwise returns this widget.
  Widget? when(bool condition, Widget? Function(Widget?) builder) {
    return condition ? builder(this) : this;
  }
}
