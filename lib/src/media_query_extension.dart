import 'package:flutter/material.dart';

extension MediaQueryExtension on BuildContext {
  Size get mediaQuerySize => MediaQuery.of(this).size;

  EdgeInsets get mediaQueryPadding => MediaQuery.of(this).padding;

  EdgeInsets get mediaQueryViewPadding => MediaQuery.of(this).viewPadding;

  EdgeInsets get mediaQueryViewInsets => MediaQuery.of(this).viewInsets;

  Orientation get orientation => MediaQuery.of(this).orientation;

  bool get isLandscape => orientation == Orientation.landscape;

  bool get isPortrait => orientation == Orientation.portrait;

  bool get alwaysUse24HourFormat => MediaQuery.of(this).alwaysUse24HourFormat;

  double get devicePixelRatio => MediaQuery.of(this).devicePixelRatio;

  Brightness get platformBrightness => MediaQuery.of(this).platformBrightness;

  double get textScaleFactor => MediaQuery.of(this).textScaleFactor;

  double get mediaQueryShortestSide => mediaQuerySize.shortestSide;

  double get mediaQueryLongestSide => mediaQuerySize.longestSide;

  double get mediaQueryAspectRatio => mediaQuerySize.aspectRatio;

  bool get invertColors => MediaQuery.of(this).invertColors;

  bool get disableAnimations => MediaQuery.of(this).disableAnimations;

  bool get accessibleNavigation => MediaQuery.of(this).accessibleNavigation;

  /// True if the current device is Phone
  bool get isPhone => (mediaQueryShortestSide < 600);

  /// 600dp: a 7” tablet (600x1024 mdpi).
  bool get isSmallTablet => (mediaQueryShortestSide >= 600);

  /// 720dp: a 10” tablet (720x1280 mdpi, 800x1280 mdpi, etc).
  bool get isLargeTablet => (mediaQueryShortestSide >= 720);

  /// True if the current device is Tablet
  bool get isTablet => isSmallTablet || isLargeTablet;

  /// The width of the screen.
  double get screenWidth => MediaQuery.of(this).size.width;

  /// The height of the screen.
  double get screenHeight => MediaQuery.of(this).size.height;

  /// Whether or not the device is currently in landscape mode.
  bool get isLandscapeMode => MediaQuery.of(this).orientation == Orientation.landscape;

  /// Whether or not the device is currently in portrait mode.
  bool get isPortraitMode => MediaQuery.of(this).orientation == Orientation.portrait;

  /// The total amount of space allocated for the bottom navigation bar.
  double get bottomNavigationBarHeight => kBottomNavigationBarHeight;

  /// The total amount of space allocated for the status bar.
  double get statusBarHeight => MediaQuery.of(this).padding.top;

  /// The total amount of space allocated for the system overlays.
  double get systemGestureInsetBottom => MediaQuery.of(this).padding.bottom;

  /// The amount of padding on the left and right edges of the screen.
  EdgeInsets get horizontalPadding => EdgeInsets.symmetric(horizontal: MediaQuery.of(this).size.width * 0.05);

  /// The amount of padding on the top and bottom edges of the screen.
  EdgeInsets get verticalPadding => EdgeInsets.symmetric(vertical: MediaQuery.of(this).size.height * 0.05);

  /// The amount of padding on all edges of the screen.
  EdgeInsets get allPadding => EdgeInsets.all(MediaQuery.of(this).size.width * 0.05);

  bool get isHighContrast => MediaQuery.of(this).highContrast;

  bool get isInteractive => MediaQuery.of(this).platformBrightness == Brightness.dark;
}