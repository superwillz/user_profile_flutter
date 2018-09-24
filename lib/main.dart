import 'package:flutter/material.dart';
import './profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("William's Profile"),
        ),
        body: Profile(),
      ),
    );
  }
}