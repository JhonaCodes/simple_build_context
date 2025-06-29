import 'package:flutter/material.dart';

/// Extension on [BuildContext] to provide quick access to [DateTime] properties.
extension DateTimeExtension on BuildContext {
  /// Returns the current [DateTime].
  DateTime get now => DateTime.now();
}
