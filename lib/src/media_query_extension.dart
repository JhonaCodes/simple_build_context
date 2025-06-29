import 'package:flutter/material.dart';

/// Extension on [BuildContext] to provide quick access to [MediaQuery] properties.
extension MediaQueryExtension on BuildContext {
  /// The size of the media in logical pixels.
  Size get mediaQuerySize => MediaQuery.of(this).size;

  /// The padding for the media.
  EdgeInsets get mediaQueryPadding => MediaQuery.of(this).padding;

  /// The view padding for the media.
  EdgeInsets get mediaQueryViewPadding => MediaQuery.of(this).viewPadding;

  /// The view insets for the media.
  EdgeInsets get mediaQueryViewInsets => MediaQuery.of(this).viewInsets;

  /// The orientation of the media.
  Orientation get orientation => MediaQuery.of(this).orientation;

  /// Whether the device is in landscape mode.
  bool get isLandscape => orientation == Orientation.landscape;

  /// Whether the device is in portrait mode.
  bool get isPortrait => orientation == Orientation.portrait;

  /// Whether the device is using 24-hour format.
  bool get alwaysUse24HourFormat => MediaQuery.of(this).alwaysUse24HourFormat;

  /// The device pixel ratio of the media.
  double get devicePixelRatio => MediaQuery.of(this).devicePixelRatio;

  /// The platform brightness of the media.
  Brightness get platformBrightness => MediaQuery.of(this).platformBrightness;

  /// The text scale factor of the media.
  double textScaleFactor(double scale) =>
      MediaQuery.of(this).textScaler.scale(scale);

  /// The shortest side of the media.
  double get mediaQueryShortestSide => mediaQuerySize.shortestSide;

  /// The longest side of the media.
  double get mediaQueryLongestSide => mediaQuerySize.longestSide;

  /// The aspect ratio of the media.
  double get mediaQueryAspectRatio => mediaQuerySize.aspectRatio;

  /// Whether the colors of the media are inverted.
  bool get invertColors => MediaQuery.of(this).invertColors;

  /// Whether the animations of the media are disabled.
  bool get disableAnimations => MediaQuery.of(this).disableAnimations;

  /// Whether the media is using accessible navigation.
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
  bool get isLandscapeMode =>
      MediaQuery.of(this).orientation == Orientation.landscape;

  /// Whether or not the device is currently in portrait mode.
  bool get isPortraitMode =>
      MediaQuery.of(this).orientation == Orientation.portrait;

  /// The total amount of space allocated for the bottom navigation bar.
  double get bottomNavigationBarHeight => kBottomNavigationBarHeight;

  /// The total amount of space allocated for the status bar.
  double get statusBarHeight => MediaQuery.of(this).padding.top;

  /// The total amount of space allocated for the system overlays.
  double get systemGestureInsetBottom => MediaQuery.of(this).padding.bottom;

  /// The amount of padding on the left and right edges of the screen.
  EdgeInsets get horizontalPadding =>
      EdgeInsets.symmetric(horizontal: MediaQuery.of(this).size.width * 0.05);

  /// The amount of padding on the top and bottom edges of the screen.
  EdgeInsets get verticalPadding =>
      EdgeInsets.symmetric(vertical: MediaQuery.of(this).size.height * 0.05);

  /// The amount of padding on all edges of the screen.
  EdgeInsets get allPadding =>
      EdgeInsets.all(MediaQuery.of(this).size.width * 0.05);

  /// Whether the media is in high contrast mode.
  bool get isHighContrast => MediaQuery.of(this).highContrast;

  /// Whether the media is interactive.
  bool get isInteractive =>
      MediaQuery.of(this).platformBrightness == Brightness.dark;
}
