import 'package:flutter/material.dart';
import 'package:flutter_task3/login.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}