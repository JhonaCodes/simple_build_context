import 'package:flutter/material.dart';
import 'package:simple_build_context/simple_build_context.dart';

// The main entry point for the example application.
void main() {
  runApp(const MyApp());
}

/// The root widget of the application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Build Context Example',
      // Define the initial route and the routes for navigation.
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/full_example': (context) => const FullExamplePage(),
        '/page_two': (context) => const PageTwo(),
      },
      // Apply a theme to the application.
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

/// The home page of the example application.
///
/// This page demonstrates basic navigation using the `simple_build_context` extensions.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Access the scaffold background color directly from the context.
      backgroundColor: context.scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text('Home Page'),
        // Access the primary color from the context's theme.
        backgroundColor: context.primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Use the context to push a named route.
            ElevatedButton(
              onPressed: () => context.navigateToNamed('/page_two'),
              child: Text(
                'Go to Page Two',
                // Access text styles from the context's theme.
                style: context.textTheme.titleMedium,
              ),
            ),
            const SizedBox(height: 20),
            // Navigate to a more comprehensive example page.
            ElevatedButton(
              onPressed: () => context.navigateToNamed('/full_example'),
              child: Text(
                'Show Full Example',
                style: context.textTheme.titleMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// A second page to demonstrate navigation.
class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Two'),
      ),
      body: Center(
        // Use the context to pop the current route and go back.
        child: ElevatedButton(
          onPressed: () => context.navigateBack(),
          child: const Text('Go Back'),
        ),
      ),
    );
  }
}

/// A page that showcases multiple features of the `simple_build_context` library.
class FullExamplePage extends StatelessWidget {
  const FullExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    // A GlobalKey for the form to demonstrate form extensions.
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Full Examples'),
      ),
      body: SingleChildScrollView(
        // Use context to get padding based on screen size.
        padding: context.allPadding,
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- MediaQuery Extensions ---
              Text('MediaQuery Info', style: context.headline5),
              const Divider(),
              // Use context to check device type and orientation.
              Text('Is this a phone? ${context.isPhone}'),
              Text('Screen Width: ${context.screenWidth.toStringAsFixed(2)}'),
              Text('Orientation: ${context.isPortrait ? 'Portrait' : 'Landscape'}'),
              const SizedBox(height: 20),

              // --- Theme Extensions ---
              Text('Theme Info', style: context.headline5),
              const Divider(),
              Text(
                'This text uses the primary color.',
                // Access colors directly from the context's theme.
                style: context.textTheme.bodyLarge?.copyWith(color: context.primaryColor),
              ),
              Text(
                'This is a headline style.',
                style: context.headline6,
              ),
              const SizedBox(height: 20),

              // --- Form & FocusScope Extensions ---
              Text('Form & Focus', style: context.headline5),
              const Divider(),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Enter some text'),
                validator: (value) {
                  // Use the string extension to check if the value is empty.
                  if (value!.isNullOrEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Use context to validate the form.
                  ElevatedButton(
                    onPressed: () {
                      // Access form validation through context extension.
                      if (context.form.validate()) {
                        // --- Scaffold Extension ---
                        // Show a snackbar on successful validation.
                        context.showSnackBar(
                          const SnackBar(
                            content: Text('Form is valid!'),
                            backgroundColor: Colors.green,
                          ),
                        );
                        // Close the keyboard after submission.
                        context.closeKeyboard();
                      }
                    },
                    child: const Text('Validate & Submit'),
                  ),
                  // Use context to close the keyboard.
                  TextButton(
                    onPressed: () => context.closeKeyboard(),
                    child: const Text('Close Keyboard'),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // --- Random Extension ---
              Text('Random Extension', style: context.headline5),
              const Divider(),
              Text('A random number up to 100: ${context.nextInt(100)}'),
            ],
          ),
        ),
      ),
    );
  }
}
