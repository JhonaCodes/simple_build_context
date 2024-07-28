import 'package:flutter/material.dart';

import 'dart:math';

extension RandomExtension on BuildContext {
  int nextInt(int max) => Random().nextInt(max);
}