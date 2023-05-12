## simple_build_context
<img src="https://raw.githubusercontent.com/JhonaCodes/simple_build_context/main/assets/simple_build_context.png" width="300" height="150" />

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) [![Nombre del paquete](https://img.shields.io/pub/v/simple_build_context.svg)](https://pub.dev/packages/simple_build_context) [![Dart 3](https://img.shields.io/badge/Dart-3%2B-blue.svg)](https://dart.dev/) [![Flutter 3.10](https://img.shields.io/badge/Flutter-3%2B-blue.svg)](https://flutter.dev/)


---
#### Tired of passing context down through multiple layers of your Flutter application? Our library simplifies this process by providing an easy-to-use context wrapper that can be easily accessed throughout your codebase. With our library, you'll be able to streamline your code and improve the readability of your application, all while enjoying the benefits of a more efficient development process. Our context library provides unique features that differentiate it from other similar libraries in the market, including seamless integration with popular Flutter packages, such as Provider, and the ability to access context from anywhere in your codebase. With our library, you can focus on developing your application, rather than worrying about the complexities of context management.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Installation
To install simple_build_context, add the following dependency to your pubspec.yaml file:

````flutter
dependencies:
  simple_build_context: ^1.0.4
````

Then run  ```flutter pub get``` on the command line


## Use
```flutter
import 'package:simple_build_context/src/config_build_context.dart';
```
## Disposable Extensions

```DateTime```
* context.now

```FocusScope.of(context)```
* context.focusScope.hasFocus
* context.focusScope.isFirstFocus
* context.focusScope.hasPrimaryFocus
* context.focusScope.canRequestFocus
* context.focusScope.nextFocus()
* context.focusScope.requestFocus()
* context.focusScope.previousFocus()
* context.focusScope.unFocus()
* context.focusScope.setFirstFocus()
* context.focusScope.consumeKeyboardToken()

```Form.of(context)```
* context.form.validate()
* context.form.reset()
* context.form.save()

```MediaQuery```
* context.mediaQuerySize
* context.mediaQueryPadding
* context.mediaQueryViewPadding
* context.mediaQueryViewInsets
* context.orientation
* context.isLandscape
* context.isPortrait
* context.alwaysUse24HourFormat
* context.devicePixelRatio
* context.platformBrightness
* context.textScaleFactor
* context.mediaQueryShortestSide
* context.mediaQueryLongestSide
* context.mediaQueryAspectRatio
* context.invertColors
* context.disableAnimations
* context.accessibleNavigation
* context.isPhone
* context.isSmallTablet
* context.isLargeTablet
* context.isTablet
* context.screenWidth
* context.screenHeight
* context.isLandscapeMode
* context.isPortraitMode
* context.bottomNavigationBarHeight
* context.statusBarHeight
* context.systemGestureInsetBottom
* context.horizontalPadding
* context.verticalPadding
* context.allPadding
* context.isHighContrast
* context.isInteractive


```ModalRoute```
* context.modalRoute
* context.routeSettings
* context.scaffold
* context.isScaffoldOpen


```Navigator```
* context.push()
* context.pop()
* context.pushNamed()
* context.canPop()
* context.popUntil()


```Navigator(Variant)```
* context.navigateTo()
* context.navigateToNamed()
* context.navigateBack()


```Random```
* context.nextInt()


```Scaffold```
* context.showSnackBar()
* context.removeCurrentSnackBar()
* context.hideCurrentSnackBar()
* context.openDrawer()
* context.openEndDrawer()
* context.showBottomSheet()
* context.showBottomSheet()
* context.isScaffoldDrawerOpen
* context.isScaffoldEndDrawerOpen

```Theme```
* context.theme
* context.textTheme
* context.primaryTextTheme
* context.bottomAppBarTheme
* context.bottomSheetTheme
* context.backgroundColor
* context.onPrimary
* context.onBackground
* context.primaryColor
* context.scaffoldBackgroundColor
* context.appBarTheme
* context.platform
* context.isAndroid
* context.isIOS
* context.isMacOS
* context.isWindows
* context.isFuchsia
* context.isLinux
* context.headline1
* context.headline2
* context.headline3
* context.headline4
* context.headline5
* context.headline6
* context.subtitleMedium
* context.subtitleSmall
* context.bodyTextLarge
* context.bodyTextMedium
* context.caption
* context.labelButtonLarge
* context.everLineSmall
* context.cardColor
* context.dividerColor
* context.errorColor
* context.focusColor
* context.highlightColor
* context.splashColor
* context.overLine
* context.button
* context.subtitle1
* context.subtitle2
* context.bodyText1
* context.bodyText2
* context.cardTitle
* context.errorText
* context.textFieldLabel
* context.disabledTextStyle
* context.tabBarTextStyle
* context.disabledColor
* context.hintColor
* context.primaryColorLight
* context.secondaryColor
* context.secondaryColorDark
* context.tertiaryColor
* context.tertiaryColorLight
* context.tertiaryColorDark
* context.successColor
* context.warningColor
* context.titleFontSize
* context.subtitleFontSize
* context.bodyFontSize
* context.captionFontSize
* context.buttonFontSize
* context.overLineFontSize
* context.appBarHeight
* context.cardHeight
* context.cardWidth
* context.cardRadius
* context.isLightTheme
* context.isDarkTheme
* context.iconSize
* context.buttonPadding
* context.inputDecorationPadding
* context.iconButtonSize
* context.iconButtonRadius

```ScrollController```
* context.primaryScrollController

```String```
```dart

String? nullText = null;
bool isNullOrEmpty = nullText?.isNullOrEmpty ?? true; // Return true
bool isNotNullOrEmpty = nullText?.isNotNullOrEmpty ?? false; // Return false

String emptyText = '';
bool isNullOrEmpty = emptyText.isNullOrEmpty; // Return true
bool isNotNullOrEmpty = emptyText.isNotNullOrEmpty; // Return false

String notEmptyText = 'Hello, mundo!';
bool isNullOrEmpty = notEmptyText.isNullOrEmpty; // Return false
bool isNotNullOrEmpty = notEmptyText.isNotNullOrEmpty; // Return true

```

```Widget```
```dart
/// Minimize if conditions on your code
class MyWidget extends StatelessWidget {
  final String? text;

  const MyWidget({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Check if the text is not null or empty
    final isTextNotEmpty = text.isNotNullOrEmpty;

    // Build a text widget if the text is not null or empty, or a circular progress indicator otherwise
    final widget = isTextNotEmpty
        ? Text(text!)
        : CircularProgressIndicator();

    // Check if the widget is null
    final isWidgetNull = widget.isNull;

    // Provide an alternative widget if the widget is null
    final widgetOrDefault = widget.orElse(Container());

    // Build a column widget that shows the widget if it's not null or empty, or an error message otherwise
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        widgetOrDefault,
        if (isWidgetNull)
          Text('The widget is null')
        else if (!isTextNotEmpty)
          Text('The text is null or empty')
      ],
    );
  }
}


```

```Iterable```
```dart
List<int> numbers = [1, 2, 3, 4, 5];
List<int> listOfNumbers = numbers.asList; // Return a new list with a numbers elements

String? text = ['hello', 'world'].firstOrNull; // Return 'hello'
Set<int> sets = <int>{};
int? lastElement = sets.lastOrNull; // Return null
```


```List```
```dart
List<int> numbers = [1, 2, 3, 4, 5];
int? lastNumber = numbers.lastOrNull; // Return 5
int? firstNumber = numbers.firstOrNull; // Return 1

List<String> letter = ['a', 'b', 'c', 'd'];
List<String> subList = letter - ['a', 'c']; // Return ['b', 'd']
```



## Example
```dart
class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: context.scaffoldBackgroundColor,

      body: Center(

        child: ElevatedButton(
          onPressed: () => context.pushNamed('/pageRoute'),
          child: Text('NextPage',
            style: context.primaryTextTheme.titleMedium,
          ),

        ),

      ),
    );
  }
}
```
