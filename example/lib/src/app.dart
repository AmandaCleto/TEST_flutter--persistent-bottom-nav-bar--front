import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_example_project/src/features/home/documents/documents.dart';
import 'package:persistent_bottom_nav_bar_example_project/src/features/home/notifications/notification.dart';

import 'package:persistent_bottom_nav_bar_example_project/src/features/initial-route/initial.dart';
import 'package:persistent_bottom_nav_bar_example_project/src/features/screen-2/screen2.dart';
import 'package:persistent_bottom_nav_bar_example_project/src/features/screen-3/screen3.dart';

BuildContext testContext;

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title of project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MainMenu(),
        // When navigating to the "/" route, build the FirstScreen widget.
        '/first': (context) => MainScreen2(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => MainScreen3(),

        '/notifications': (context) => NotificationPage(),
        '/documents': (context) => DocumentsPage(),
      },
    );
  }
}
