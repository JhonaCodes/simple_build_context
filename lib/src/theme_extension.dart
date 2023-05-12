import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {

  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  TextTheme get primaryTextTheme => Theme.of(this).primaryTextTheme;


  BottomAppBarTheme get bottomAppBarTheme => Theme.of(this).bottomAppBarTheme;

  BottomSheetThemeData get bottomSheetTheme => Theme.of(this).bottomSheetTheme;


  Color get backgroundColor => Theme.of(this).colorScheme.background;
  Color get onPrimary    => Theme.of(this).colorScheme.onPrimary;
  Color get onBackground => Theme.of(this).colorScheme.onBackground;

  Color get primaryColor => Theme.of(this).primaryColor;

  Color get scaffoldBackgroundColor => Theme.of(this).scaffoldBackgroundColor;


  AppBarTheme get appBarTheme => Theme.of(this).appBarTheme;

  /// Define platform
  TargetPlatform get platform => Theme.of(this).platform;

  bool get isAndroid => platform == TargetPlatform.android;

  bool get isIOS => platform == TargetPlatform.iOS;

  bool get isMacOS => platform == TargetPlatform.macOS;

  bool get isWindows => platform == TargetPlatform.windows;

  bool get isFuchsia => platform == TargetPlatform.fuchsia;

  bool get isLinux => platform == TargetPlatform.linux;

  /// Header
  TextStyle? get headline1 => textTheme.displayLarge;

  TextStyle? get headline2 => textTheme.displayMedium;

  TextStyle? get headline3 => textTheme.displaySmall;

  TextStyle? get headline4 => textTheme.headlineMedium;

  TextStyle? get headline5 => textTheme.headlineSmall;

  TextStyle? get headline6 => textTheme.titleLarge;

  /// Subtittle
  TextStyle? get subtitleMedium => textTheme.titleMedium;

  TextStyle? get subtitleSmall => textTheme.titleSmall;

  TextStyle? get bodyTextLarge => textTheme.bodyLarge;

  TextStyle? get bodyTextMedium => textTheme.bodyMedium;

  TextStyle? get caption => textTheme.bodySmall;

  TextStyle? get labelButtonLarge => textTheme.labelLarge;

  TextStyle? get everLineSmall => textTheme.labelSmall;

  Color get cardColor => Theme.of(this).cardColor;

  Color get dividerColor => Theme.of(this).dividerColor;

  Color get errorColor => Theme.of(this).colorScheme.error;

  Color get focusColor => Theme.of(this).focusColor;

  Color get highlightColor => Theme.of(this).highlightColor;

  Color get splashColor => Theme.of(this).splashColor;

  TextStyle? get overLine => textTheme.labelSmall;

  TextStyle? get button => textTheme.labelLarge;

  TextStyle? get subtitle1 => textTheme.titleMedium;

  TextStyle? get subtitle2 => textTheme.titleSmall;

  TextStyle? get bodyText1 => textTheme.bodyLarge;

  TextStyle? get bodyText2 => textTheme.bodyMedium;

  TextStyle? get cardTitle => textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold);

  TextStyle? get errorText => textTheme.bodyMedium?.copyWith(color: theme.colorScheme.error);

  TextStyle? get textFieldLabel => textTheme.titleMedium?.copyWith(color: theme.disabledColor);

  TextStyle? get disabledTextStyle => textTheme.bodyLarge?.copyWith(color: theme.disabledColor);

  TextStyle? get tabBarTextStyle => textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold);

  Color get disabledColor => theme.disabledColor;

  Color get hintColor => theme.hintColor;

  Color get primaryColorLight => theme.colorScheme.primaryContainer;

  Color get secondaryColor => theme.colorScheme.secondary;

  Color get secondaryColorDark => theme.colorScheme.secondaryContainer;

  Color get tertiaryColor => theme.colorScheme.surface;

  Color get tertiaryColorLight => theme.colorScheme.background;

  Color get tertiaryColorDark => theme.colorScheme.background.withOpacity(0.8);

  Color get successColor => Colors.green;

  Color get warningColor => Colors.yellow;


  /// The font size for the title of the current theme.
  double get titleFontSize => Theme.of(this).textTheme.titleLarge!.fontSize!;

  /// The font size for the subtitle of the current theme.
  double get subtitleFontSize => Theme.of(this).textTheme.titleMedium!.fontSize!;

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

  bool get isLightTheme => theme.brightness == Brightness.light;

  bool get isDarkTheme => theme.brightness == Brightness.dark;


  double get iconSize => theme.iconTheme.size ?? 24.0;

  EdgeInsetsGeometry get buttonPadding => theme.buttonTheme.padding;

  EdgeInsetsGeometry get inputDecorationPadding => theme.inputDecorationTheme.contentPadding ?? EdgeInsets.zero;

  double get iconButtonSize => buttonPadding.vertical + iconSize;

  double get iconButtonRadius => iconButtonSize / 2;
}