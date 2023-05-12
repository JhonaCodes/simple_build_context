import 'package:flutter/material.dart';
import 'package:simple_build_context/simple_build_context.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.scaffoldBackgroundColor, // There is no Theme.of(context)
      body: Center(
        child: GestureDetector(
          onTap: () => context.pushNamed('/detailsPage'), // we use only context not Navigator.of(context)
          child: Text(
            'Press Me',
            style: context.primaryTextTheme.titleMedium, // we use only context not Theme.of(context)
          ),
        ),
      ),
    );
  }
}