import 'package:flutter/material.dart';

import 'package:persistent_bottom_nav_bar_example_project/src/features/initial-route/initial.dart';
import 'package:persistent_bottom_nav_bar_example_project/src/features/screen-2/screen2.dart';
import 'package:persistent_bottom_nav_bar_example_project/src/features/screen-3/screen3.dart';

BuildContext testContext;

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Persistent Bottom Navigation Bar example project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainMenu(),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/first': (context) => MainScreen2(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => MainScreen3(),
      },
    );
  }
}
