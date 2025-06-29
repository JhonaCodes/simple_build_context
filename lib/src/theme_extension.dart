import 'package:flutter/material.dart';

/// Extension on [BuildContext] to provide quick access to [ThemeData] properties.
extension ThemeExtension on BuildContext {
  /// The main theme data for the application.
  ThemeData get theme => Theme.of(this);

  /// The text theme for the application.
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// The primary text theme for the application.
  TextTheme get primaryTextTheme => Theme.of(this).primaryTextTheme;

  /// The bottom app bar theme for the application.
  BottomAppBarTheme get bottomAppBarTheme => Theme.of(this).bottomAppBarTheme;

  /// The bottom sheet theme for the application.
  BottomSheetThemeData get bottomSheetTheme => Theme.of(this).bottomSheetTheme;

  /// The background color for the application.
  Color get backgroundColor => Theme.of(this).colorScheme.surface;

  /// The color for text and icons on top of the primary color.
  Color get onPrimary => Theme.of(this).colorScheme.onPrimary;

  /// The color for text and icons on top of the background color.
  Color get onBackground => Theme.of(this).colorScheme.onSurface;

  /// The primary color for the application.
  Color get primaryColor => Theme.of(this).primaryColor;

  /// The background color for the scaffold.
  Color get scaffoldBackgroundColor => Theme.of(this).scaffoldBackgroundColor;

  /// The app bar theme for the application.
  AppBarTheme get appBarTheme => Theme.of(this).appBarTheme;

  /// Define platform
  TargetPlatform get platform => Theme.of(this).platform;

  /// Whether the target platform is Android.
  bool get isAndroid => platform == TargetPlatform.android;

  /// Whether the target platform is iOS.
  bool get isIOS => platform == TargetPlatform.iOS;

  /// Whether the target platform is macOS.
  bool get isMacOS => platform == TargetPlatform.macOS;

  /// Whether the target platform is Windows.
  bool get isWindows => platform == TargetPlatform.windows;

  /// Whether the target platform is Fuchsia.
  bool get isFuchsia => platform == TargetPlatform.fuchsia;

  /// Whether the target platform is Linux.
  bool get isLinux => platform == TargetPlatform.linux;

  /// Header
  /// The style for display large text.
  TextStyle? get headline1 => textTheme.displayLarge;

  /// The style for display medium text.
  TextStyle? get headline2 => textTheme.displayMedium;

  /// The style for display small text.
  TextStyle? get headline3 => textTheme.displaySmall;

  /// The style for headline medium text.
  TextStyle? get headline4 => textTheme.headlineMedium;

  /// The style for headline small text.
  TextStyle? get headline5 => textTheme.headlineSmall;

  /// The style for title large text.
  TextStyle? get headline6 => textTheme.titleLarge;

  /// Subtittle
  /// The style for title medium text.
  TextStyle? get subtitleMedium => textTheme.titleMedium;

  /// The style for title small text.
  TextStyle? get subtitleSmall => textTheme.titleSmall;

  /// The style for body large text.
  TextStyle? get bodyTextLarge => textTheme.bodyLarge;

  /// The style for body medium text.
  TextStyle? get bodyTextMedium => textTheme.bodyMedium;

  /// The style for body small text (caption).
  TextStyle? get caption => textTheme.bodySmall;

  /// The style for label large text.
  TextStyle? get labelButtonLarge => textTheme.labelLarge;

  /// The style for label small text.
  TextStyle? get everLineSmall => textTheme.labelSmall;

  /// The color of the card.
  Color get cardColor => Theme.of(this).cardColor;

  /// The color of the divider.
  Color get dividerColor => Theme.of(this).dividerColor;

  /// The color of the error.
  Color get errorColor => Theme.of(this).colorScheme.error;

  /// The color of the focus.
  Color get focusColor => Theme.of(this).focusColor;

  /// The color of the highlight.
  Color get highlightColor => Theme.of(this).highlightColor;

  /// The color of the splash.
  Color get splashColor => Theme.of(this).splashColor;

  /// The style for label small text (overline).
  TextStyle? get overLine => textTheme.labelSmall;

  /// The style for label large text (button).
  TextStyle? get button => textTheme.labelLarge;

  /// The style for title medium text (subtitle1).
  TextStyle? get subtitle1 => textTheme.titleMedium;

  /// The style for title small text (subtitle2).
  TextStyle? get subtitle2 => textTheme.titleSmall;

  /// The style for body large text (bodyText1).
  TextStyle? get bodyText1 => textTheme.bodyLarge;

  /// The style for body medium text (bodyText2).
  TextStyle? get bodyText2 => textTheme.bodyMedium;

  /// The style for the title of a card.
  TextStyle? get cardTitle =>
      textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold);

  /// The style for error text.
  TextStyle? get errorText =>
      textTheme.bodyMedium?.copyWith(color: theme.colorScheme.error);

  /// The style for the label of a text field.
  TextStyle? get textFieldLabel =>
      textTheme.titleMedium?.copyWith(color: theme.disabledColor);

  /// The style for disabled text.
  TextStyle? get disabledTextStyle =>
      textTheme.bodyLarge?.copyWith(color: theme.disabledColor);

  /// The style for the text in a tab bar.
  TextStyle? get tabBarTextStyle =>
      textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold);

  /// The color for disabled elements.
  Color get disabledColor => theme.disabledColor;

  /// The color for hint text.
  Color get hintColor => theme.hintColor;

  /// The light primary color.
  Color get primaryColorLight => theme.colorScheme.primaryContainer;

  /// The secondary color.
  Color get secondaryColor => theme.colorScheme.secondary;

  /// The dark secondary color.
  Color get secondaryColorDark => theme.colorScheme.secondaryContainer;

  /// The tertiary color.
  Color get tertiaryColor => theme.colorScheme.surface;

  /// The light tertiary color.
  Color get tertiaryColorLight => theme.colorScheme.surface;

  /// The dark tertiary color.
  Color get tertiaryColorDark =>
      theme.colorScheme.surface.withValues(alpha: 80);

  /// The color for success messages.
  Color get successColor => Colors.green;

  /// The color for warning messages.
  Color get warningColor => Colors.yellow;

  /// The font size for the title of the current theme.
  double get titleFontSize => Theme.of(this).textTheme.titleLarge!.fontSize!;

  /// The font size for the subtitle of the current theme.
  double get subtitleFontSize =>
      Theme.of(this).textTheme.titleMedium!.fontSize!;

  /// The font size for the body text of the current theme.
  double get bodyFontSize => Theme.of(this).textTheme.bodyLarge!.fontSize!;

  /// The font size for the caption of the current theme.
  double get captionFontSize => Theme.of(this).textTheme.bodySmall!.fontSize!;

  /// The font size for the button label of the current theme.
  double get buttonFontSize => Theme.of(this).textTheme.labelLarge!.fontSize!;

  /// The font size for the overline of the current theme.
  double get overLineFontSize => Theme.of(this).textTheme.labelSmall!.fontSize!;

  /// The height of the app bar for the current theme.
  double get appBarHeight => kToolbarHeight;

  /// The height of the current theme's material design card.
  double get cardHeight => 156;

  /// The width of the current theme's material design card.
  double get cardWidth => 296;

  /// The radius of the current theme's material design card.
  double get cardRadius => 16;

  /// Whether the current theme is a light theme.
  bool get isLightTheme => theme.brightness == Brightness.light;

  /// Whether the current theme is a dark theme.
  bool get isDarkTheme => theme.brightness == Brightness.dark;

  /// The size of the icons in the current theme.
  double get iconSize => theme.iconTheme.size ?? 24.0;

  /// The padding for buttons in the current theme.
  EdgeInsetsGeometry get buttonPadding => theme.buttonTheme.padding;

  /// The padding for input decorations in the current theme.
  EdgeInsetsGeometry get inputDecorationPadding =>
      theme.inputDecorationTheme.contentPadding ?? EdgeInsets.zero;

  /// The size of the icon buttons in the current theme.
  double get iconButtonSize => buttonPadding.vertical + iconSize;

  /// The radius of the icon buttons in the current theme.
  double get iconButtonRadius => iconButtonSize / 2;
}
