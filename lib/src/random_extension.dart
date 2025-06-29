import 'package:flutter/material.dart';

import 'dart:math';

/// Extension on [BuildContext] to provide quick access to [Random] methods.
extension RandomExtension on BuildContext {
  /// Returns a random integer from 0 to [max] (exclusive).
  int nextInt(int max) => Random().nextInt(max);
}
