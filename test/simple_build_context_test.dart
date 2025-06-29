import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_build_context/simple_build_context.dart';

void main() {
  // Test group for String extensions.
  group('StringExtension Tests', () {
    test('isNullOrEmpty returns true for null or empty strings', () {
      const emptyString = '';
      expect(emptyString.isNullOrEmpty, isTrue);

      const whitespaceString = '   ';
      expect(whitespaceString.isNullOrEmpty, isTrue);
    });

    test('isNotNullOrEmpty returns true for non-empty strings', () {
      const nonEmptyString = 'hello';
      expect(nonEmptyString.isNotNullOrEmpty, isTrue);
    });
  });

  // Test group for List extensions.
  group('ListExtension Tests', () {
    test('minus operator removes elements correctly', () {
      final list1 = [1, 2, 3, 4, 5];
      final list2 = [2, 4];
      final result = list1 - list2;
      expect(result, equals([1, 3, 5]));
    });

    test('firstOrNull and lastOrNull work correctly', () {
      final emptyList = <int>[];
      expect(emptyList.firstOrNull, isNull);
      expect(emptyList.lastOrNull, isNull);

      final list = [1, 2, 3];
      expect(list.firstOrNull, 1);
      expect(list.lastOrNull, 3);
    });
  });

  // Test group for Iterable extensions.
  group('IterableExtension Tests', () {
    test('firstOrNull and lastOrNull for iterables work correctly', () {
      final emptyIterable = <int>{};
      expect(emptyIterable.firstOrNull, isNull);
      expect(emptyIterable.lastOrNull, isNull);

      final iterable = {1, 2, 3};
      expect(iterable.firstOrNull, 1);
      expect(iterable.lastOrNull, 3);
    });
  });

  // Test group for Widget extensions.
  group('WidgetExtension Tests', () {
    const testWidget = Text('Test');
    const alternativeWidget = Text('Alternative');

    test('orElse returns the original widget if not null', () {
      Widget? widget = testWidget;
      expect(widget.orElse(alternativeWidget), testWidget);
    });

    test('orElse returns the alternative widget if null', () {
      Widget? widget;
      expect(widget.orElse(alternativeWidget), alternativeWidget);
    });

    test('isNotNull and isNull work correctly', () {
      Widget? nullWidget;
      const nonNullWidget = SizedBox();
      expect(nullWidget.isNull, isTrue);
      expect(nullWidget.isNotNull, isFalse);
      expect(nonNullWidget.isNull, isFalse);
      expect(nonNullWidget.isNotNull, isTrue);
    });

    test('when applies builder function when condition is true', () {
      Widget? widget = const Text('Original');
      final newWidget = widget.when(
        true,
        (w) => const Text('Modified'),
      );
      expect((newWidget as Text).data, 'Modified');
    });

    test('when does not apply builder function when condition is false', () {
      Widget? widget = const Text('Original');
      final newWidget = widget.when(
        false,
        (w) => const Text('Modified'),
      );
      expect((newWidget as Text).data, 'Original');
    });
  });

  // Test group for BuildContext related extensions.
  group('BuildContext Extension Tests', () {
    testWidgets('Theme extensions return correct theme data', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              // Verify that theme extensions return non-null values.
              expect(context.theme, isA<ThemeData>());
              expect(context.textTheme, isA<TextTheme>());
              expect(context.primaryColor, isNotNull);
              return const SizedBox();
            },
          ),
        ),
      );
    });

    testWidgets('MediaQuery extensions return correct data', (tester) async {
      // Set a portrait orientation for the test.
      tester.view.physicalSize =
          const Size(1080, 1920); // Typical phone portrait resolution
      tester.view.devicePixelRatio = 1.0;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              // Verify that MediaQuery extensions return valid data.
              expect(context.mediaQuerySize, isA<Size>());
              expect(context.screenWidth, isNotNull);
              expect(context.isPortrait, isTrue);
              return const SizedBox();
            },
          ),
        ),
      );

      // Reset the window size after the test.
      tester.view.resetPhysicalSize();
      tester.view.resetDevicePixelRatio();
    });

    testWidgets('Navigator extensions can be called', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          routes: {
            '/test': (_) => const Scaffold(),
          },
          home: Builder(
            builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  // Verify that navigator extensions do not throw exceptions.
                  expect(
                      () => context.navigateToNamed('/test'), returnsNormally);
                },
                child: const Text('Push'),
              );
            },
          ),
        ),
      );

      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();
      expect(find.byType(Scaffold), findsOneWidget);
    });
  });
}
