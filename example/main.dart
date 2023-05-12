import 'package:flutter/material.dart';
import 'package:simple_build_context/simple_build_context.dart';

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