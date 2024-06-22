import 'package:flutter/material.dart';
import 'package:api_int/homepage.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "API Calls",
      home: homepage(),
    );
  }
}
