import 'package:flutter/material.dart';

/// Extension on [BuildContext] to provide quick access to [ScrollController] properties.
extension ScrollControllerExtension on BuildContext {
  /// The primary [ScrollController] for the current [BuildContext].
  ScrollController get primaryScrollController =>
      PrimaryScrollController.of(this);
}
