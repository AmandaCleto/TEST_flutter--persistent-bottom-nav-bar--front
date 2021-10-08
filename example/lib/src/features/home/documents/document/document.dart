import 'package:flutter/material.dart';

class DocumentPage extends StatelessWidget {
  const DocumentPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('document'),
      ),
      backgroundColor: Colors.deepOrangeAccent,
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "<< Go Back to Documents",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
