import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:persistent_bottom_nav_bar_example_project/src/features/home/documents/documents.dart';
import 'package:persistent_bottom_nav_bar_example_project/src/features/home/notifications/notification.dart';
import 'package:persistent_bottom_nav_bar_example_project/src/features/screen-2/screen2.dart';
import 'package:persistent_bottom_nav_bar_example_project/src/features/screens/modal-screen.dart';

class HomeScreen extends StatelessWidget {
  final BuildContext menuScreenContext;
  final Function onScreenHideButtonPressed;
  final bool hideStatus;
  const HomeScreen(
      {Key key,
      this.menuScreenContext,
      this.onScreenHideButtonPressed,
      this.hideStatus = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Scaffold(
          appBar: AppBar(
            title: Text('home'),
          ),
          backgroundColor: Colors.green,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    pushNewScreenWithRouteSettings(
                      context,
                      settings: RouteSettings(name: '/notifications'),
                      screen: NotificationPage(),
                      pageTransitionAnimation: PageTransitionAnimation.fade,
                    );
                  },
                  child: Text(
                    "Go to Notifications >>",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    pushNewScreenWithRouteSettings(
                      context,
                      settings: RouteSettings(name: '/documents'),
                      screen: DocumentsPage(),
                      pageTransitionAnimation: PageTransitionAnimation.fade,
                    );
                  },
                  child: Text(
                    "Go to Documents >>",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              // SizedBox(
              //   height: 60.0,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
