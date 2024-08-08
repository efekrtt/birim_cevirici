import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('Birim Cevirici'))),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
