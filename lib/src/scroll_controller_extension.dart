import 'package:flutter/material.dart';

extension ScrollControllerExtension on BuildContext {
  ScrollController get primaryScrollController => PrimaryScrollController.of(this);
}